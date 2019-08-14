var Pool = require('pg-pool');
var url = require('url');
var session = require('client-sessions');
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

// Define session parameters for app
app.use(session({
  cookieName: 'session',
  secret: 'xUy0ChYrMwR23B59sfok',
  duration: 120 * 60 * 1000,
  activeDuration: 15 * 60 * 1000,
  httpOnly: true,
  secure: true,
  ephemeral: true
}));

// Set current prod variable for session
app.use(function(req, res, next) {
  if (req.session.curr_prod_external) {
    res.locals.curr_prod_external = req.session.curr_prod_external;
    next();
  } else {
    req.session.reset();
    console.log('Initialize session!');
    pool.query('SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_type=$1 LIMIT 1', ['Non-Preview'], function (err, result) {  
      if (err) {
        console.error(err);
        res.send('Error: ' + err);
      } else {
        req.session.curr_prod_external = result.rows[0].external_rel_name;
        console.log('New session variable - curr_prod_external: %s',req.session.curr_prod_external);
        res.locals.curr_prod_external = req.session.curr_prod_external;
        next();
      }
    });  
  }
});

// Home page request
app.get('/', function (request, response) {
  response.render('pages/index');
});

//Sandbox upgrade page request
app.get('/upgrade',
    // Form filter and validation for upgrade page 
    form(
      filter("org_id").trim().toUpper(),
      validate("org_id").required().is(/^[\s,;|]*(CS[0-9]{1,3}[\s,;|]*)+$/,"We only support sandbox lookups! Please enter only valid instance numbers starting with CS!")
   ),
    function (request, response) {
      if (!request.form.isValid) {
        // Handle errors
        console.log(request.form.errors);
        response.render('pages/index.ejs', { errors: request.form.errors });
      } else {
        var list = request.form.org_id;
        console.log("Instance lookup entry: ", list);
        list = list.split(/[\s,;|]+/);
        list = list.map(Function.prototype.call, String.prototype.trim);
        console.log("List of sandbox instances: ", list);
        console.log("Number of sandbox instances: ", list.length);
        pool.query('SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_id = ANY($1::text[]) ORDER BY substring(org_id, 3)::INTEGER', [list], function (err, result) {
          if (err) {
            console.error(err);
            response.send('Error: ' + err);
          } else {
            qryres = result.rows;
            console.log("Number of results: ", qryres.length);
            // check for empyt result set
            if (qryres.length <= 0) {
              console.log("[ 'Not a valid sandbox instance - try again!' ]");
              response.render('pages/index.ejs', { errors: [ 'Not a valid sandbox instance - try again!' ], input: list });
            } else {
              if (qryres.length == 1) {
                console.log("Single result");
                // console.log(qryres);
                response.render('pages/upgrade', { results: qryres });
              } else {
                console.log("Multiple results");
                response.render('pages/multi-results', { results: qryres });
              }
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
  pool.query('SELECT org_id AS "Instance",org_type AS "Type",external_rel_name AS "Release" FROM public.rel_org_type ORDER BY org_type,external_rel_name, substring(org_id, 3)::INTEGER', function (err, result) {
    if (err) {
      console.error(err);
      response.send('Error ' + err);
    } else {
      console.log("List of sandbox instances: ",result.rows.length);
      response.render('pages/sandboxinstances', {
        results: result.rows,
      });
    }
  });
});

app.listen(app.get('port'), function () {
  console.log('Node app is running on port', app.get('port'));
});
