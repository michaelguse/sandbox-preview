var Pool = require('pg-pool');
var url = require('url');
require('handlebars');

// Change the local Postgres DB connection string to your own setup for local testing
//var params = url.parse(process.env.DATABASE_URL || 'postgres://mguse:@localhost:5432/mguse');
var params = url.parse(process.env.DATABASE_URL || 'postgres://osxdwyswpfhgum:3c484b79e2e1e149624aa4e174b54d93db079122590874c92e5f9f2461f3b832@ec2-54-163-227-202.compute-1.amazonaws.com:5432/d2tre79jqmq0vu');
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

// Application-level middleware
app.use('/upgrade',function (req, res, next) {
  
  var https = require('https');

  var options = {
    host: 'api.status.salesforce.com',
    port: 443,
    path: '/v1/instances/CS80/status',
    method: 'GET'
  };
  var output = '';
  var reqGet = https.request(options, function(res) {
    console.log('STATUS: ' + res.statusCode);
    console.log('HEADERS: ' + JSON.stringify(res.headers));
    res.setEncoding('utf8');
    res.on('data', function (chunk) {
      output += chunk;
    });
    res.on('end', function () {
      console.log('Response Data:\n ' + output);
    })
    res.on('error', function(e) {
      console.error(e);
    });
  }).end();

  

  next();
})

// Home page request
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

//Sandbox upgrade page request
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
            // check for empyt result set
            if (qryres.length > 0) {
              console.log(qryres);
              response.render('pages/upgrade', {
                results: qryres,
              });
            } else {
              console.log("[ 'Invalid entry - try again!' ]");
              response.render('pages/index.ejs', { errors: [ 'Invalid entry - try again!' ] });
            }
          }
        });
      }
    }
);

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
