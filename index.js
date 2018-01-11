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

var express = require('express');
var upperCase = require('upper-case');

var app = express();

app.set('port', (process.env.PORT || 5000));

app.use(express.static(__dirname + '/public'));

// views is directory for all template files
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

app.get('/', function(request, response) {
  pool.query('SELECT internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type', function(err, result) {
    if (err) {
      console.error(err);
      response.send('Error: ' + err);
    } else {
//        response.render('pages/index', {
        response.render('pages/index', {
            results: result.rows,
      });
    }
  });
});

app.get('/upgrade', function(request, response) {
  pool.query('SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_id = $1', [upperCase(request.query.org_id)], function(err, result) {
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
});

app.get('/db', function(request, response) {
  pool.query('SELECT * FROM rel_org_type', function(err, result) {
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

app.listen(app.get('port'), function() {
  console.log('Node app is running on port', app.get('port'));
});
