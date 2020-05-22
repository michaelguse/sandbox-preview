var { prepareResults } = require("./prepareResults");
var { lookupResult } = require("./lookupResult");

const Pool = require('pg-pool');
const url = require('url');
const session = require('client-sessions');
const logger = require('heroku-logger');
require('handlebars');

// Change the DATABASE_URL in local .env file to your own setup for local testing
const params = url.parse(process.env.DATABASE_URL);
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
    logger.info('Query for current prod release');
    pool.query('SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_type=$1 LIMIT 1', ['Non-Preview'], function (err, result) {  
      if (err) {
        logger.error('Error executing query',{error: err.stack });
        res.send('Error: ' + err);
      } else {
        req.session.curr_prod_external = result.rows[0].external_rel_name;
        logger.info('Initialize new prod release variable' );
        res.locals.curr_prod_external = req.session.curr_prod_external;
        next();
      }
    });  
  }
});

// Home page request
app.get('/', function (request, response) {
  logger.info('Home page visit',{visit: 'home'});
  //response.render('pages/index');
  response.render('pages/domain');
});

// Domain home page request
app.get('/domain', function (request, response) {
  response.render('pages/domain');
});

//Sandbox upgrade page request
app.get('/upgrade',
  // Form filter and validation for upgrade page 
  form(
    filter("org_id").trim().toUpper(),
    validate("org_id").required().is(/^[\s,;|]*(CS[0-9]{1,3}[\s,;|]*)+$/,"We only support sandbox lookups! Please enter only valid instance numbers starting with CS!")
  ),
  function(request, response) {
    logger.info('Web lookup page visit', {visit: 'weblookup'});
    if (!request.form.isValid) {
      // Handle errors
      logger.info('Invalid lookup entry', {invalid_entries: request.form.org_id} );
      logger.error('Website form errors', {form_errors: request.form.errors} );
      response.render('pages/index', { errors: request.form.errors });
    } else {
      var list = request.form.org_id;
      logger.info('Website lookup entries',{web_entries: list});
      lookupResult(list, response);
    }
  }
);

// Invoke nslookup against domain name
app.get('/domainlookup', 
    // Form filter and validation for domain lookup page 
    form(
      filter("org_id").trim()
      //validate("org_id").required().is(/^(\w*[\s,;]?)+$/,"We support instance and domain name lookups!")
   ),
    function (request, response) {
      if (!request.form.isValid) {
        // Handle errors
        console.log("Domain lookup entry: ", request.form.org_id);
        console.log(request.form.errors);
        response.render('pages/domain.ejs', { errors: request.form.errors });
      } else {
        var domains = request.form.org_id;
        
        console.log("Domain lookup entry: ", domains);
        domains = domains.split(/[\s,;|]+/);
        domains = domains.map(Function.prototype.call, String.prototype.trim);  

        var res = prepareResults(domains);
        //console.log(res);

        if (res.length > 0 && res[0] !== {}) {
          response.render('pages/domainresults.ejs', { results: res });
        } else {
          response.render('pages/domain.ejs', { errors: request.form.errors });
        }
      }
    }
);

// Cheatsheet request
app.get('/cheatsheet', function (request, response) {
    logger.info('Cheatsheet page visit', {visit: 'cheatsheet'});
    response.render('pages/cheatsheet');
});

app.get('/sandbox', function (request, response) {
  logger.info('Redirect to sandbox instance page', {visit: 'sandboxhome'});
  response.redirect('/sandbox/instances');
});

app.get('/sandbox/types', function (request, response) {
  logger.info('Sandbox Type Overview page visit', {visit: 'sandboxtypes'});
  pool.query('SELECT count(id) AS "Count",org_type AS "Type",external_rel_name AS "Release" FROM public.rel_org_type GROUP BY org_type, external_rel_name', function (err, result) {
    if (err) {
      logger.error('Error executing query',{error: err.stack });
      response.send('Error ' + err);
    } else {
      response.render('pages/sandboxtypes', { results: result.rows });
    }
  });
});

app.get('/sandbox/instances', function (request, response) {
  logger.info('Sandbox Instances page visit', {visit: 'sandboxinstances'});
  pool.query('SELECT org_id AS "Instance",org_type AS "Type", org_region AS "Region", external_rel_name AS "Release" FROM public.rel_org_type ORDER BY org_type DESC, org_region ASC, external_rel_name, substring(org_id, 3)::INTEGER', function (err, result) {
    if (err) {
      logger.error('Error executing query',{error: err.stack });
      response.send('Error ' + err);
    } else {
      response.render('pages/sandboxinstances', {results: result.rows } );
    }
  });
});

app.get('/sandbox/:id', function (request, response) {
  logger.info('API lookup page visit', {visit: 'apilookup'});
  var list = request.params.id;
  logger.info('API lookup entries',{api_entries: list});
  lookupResult(list, response);
});

app.listen(app.get('port'), function () {
  logger.info('Node app is running', { port: app.get('port') } );
});
