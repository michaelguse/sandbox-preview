var Pool = require('pg-pool');
var url = require('url');
require('handlebars');

// Change the DATABASE_URL in local .env file to your own setup for local testing
var params = url.parse(process.env.DATABASE_URL);
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

app.set('port', (process.env.PORT || 5000));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + '/public'));

// views is directory for all template files
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

// Home page request
app.get('/', function (request, response) {
    pool.query('SELECT release_name, release_preview_date, release_prod_date, release_refresh_datetime FROM rel_name_map WHERE release_name = $1', [`Winter '19`], function (err, result) {
      if (err) {
        console.error(err);
        response.send('Error: ' + err);
      } else {
        console.log(result.rows);
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
      validate("org_id").required().is(/^([csCS]{2}[1]?[0-9]{1,2})$/,"Oops I can't find that instance number! Please enter a valid instance number using the guide below!")
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
              response.render('pages/upgrade', { results: qryres });
            } else {
              console.log("[ 'Invalid entry - try again!' ]");
              response.render('pages/index.ejs', { errors: [ 'Invalid entry - try again!' ] });
            }
          }
        });
      }
    }
);

// Cheatsheet request
app.get('/cheatsheet', function (request, response) {
    response.render('pages/cheatsheet');
  }
);

app.get('/sandbox/types', function (request, response) {
  pool.query('SELECT count(id) AS "Count",org_type AS "Type",external_rel_name AS "Release" FROM public.rel_org_type GROUP BY org_type,external_rel_name', function (err, result) {
    if (err) {
      console.error(err);
      response.send('Error ' + err);
    } else {
      console.log(result.rows);
      response.render('pages/sandboxtypes', {
        results: result.rows,
      });
    }
  });
});

app.get('/sandbox/instances', function (request, response) {
  pool.query('SELECT org_id AS "Instance",org_type AS "Type",external_rel_name AS "Release" FROM public.rel_org_type ORDER BY org_type,external_rel_name,  id', function (err, result) {
    if (err) {
      console.error(err);
      response.send('Error ' + err);
    } else {
      //console.log(result);
      response.render('pages/sandboxinstances', {
        results: result.rows,
      });
    }
  });
});

app.listen(app.get('port'), function () {
  console.log('Node app is running on port', app.get('port'));
});
