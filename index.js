var Pool = require('pg-pool');
var url = require('url');
require('handlebars');

// Change the local Postgres DB connection string to your own setup for local testing
var params = url.parse(process.env.DATABASE_URL || 'postgres://mguse:@localhost:5432/mguse');
var auth = params.auth.split(':');
var sslValue = true;

if (params.hostname == 'localhost') {
  sslValue = false;
}

var config = {
  user: auth[0],
  password: auth[1],
  host: params.hostname,
  port: params.port,
  database: params.pathname.split('/')[1],
  ssl: sslValue,
};

var pool = new Pool(config);
var qryres = "";

var express = require('express'),
  bodyParser = require('body-parser'),
  form = require('express-form'),
  filter = form.filter,
  validate = form.validate;

var app = express();
app.use(bodyParser());

app.set('port', (process.env.PORT || 5000));

app.use(express.static(__dirname + '/public'));

// views is directory for all template files
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

app.get('/',
  function (request, response) {
    pool.query('SELECT internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type', function (err, result) {
      if (err) {
        console.error(err);
        response.send('Error: ' + err);
      } else {
        response.render('pages/index', { results: result.rows  });
      }
    });
  }
);

app.get('/upgrade',
    // Form filter and validation for upgrade page 
    form(
      filter("org_id").trim().toUpper(),
      validate("org_id").required().is(/^([csCS]{2}[1]?[0-9]{1,2})$/,"Invalid %s - try again!")
    ),
    function (request, response) {
      if (!request.form.isValid) {
        // Handle errors
        console.log(request.form.errors);
        response.render('pages/index.ejs', { errors: request.form.errors });
      } else {
        pool.query('SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_id = $1', [request.form.org_id], function (err, result) {
          if (err) {
            console.error(err);
            response.send('Error: ' + err);
          } else {
            qryres = result.rows;
            console.log(qryres);
            response.render('pages/upgrade', {
              results: qryres,
            });
          }
        });
      }
    });

    app.get('/db', function (request, response) {
      pool.query('SELECT * FROM rel_org_type', function (err, result) {
        if (err) {
          console.error(err);
          response.send('Error ' + err);
        } else {
          response.render('pages/db', {
            results: result.rows,
          });
        }
      });
    });

    app.listen(app.get('port'), function () {
      console.log('Node app is running on port', app.get('port'));
    });
