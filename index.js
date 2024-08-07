var Pool = require('pg-pool');
var session = require('client-sessions');
require('handlebars');
var logger = require('heroku-logger');

// Read in session secret value from environment variable
var session_secret = process.env.SESSION_SECRET;

// Change the DATABASE_URL in local .env file to your own setup for local testing
var db_url = new URL(process.env.DATABASE_URL);
var sslValue = { rejectUnauthorized: false };

if (db_url.hostname == 'localhost') {
  sslValue = false;
}

var config = {
  user: db_url.username,
  password: db_url.password,
  host: db_url.hostname,
  port: db_url.port,
  database: db_url.pathname.split('/')[1],
  ssl: sslValue,
};

var pool = new Pool(config);
//console.log(pool);
var qryres = "";

var express = require('express');
//var { body } = require('express-validator');

var app = express();

app.set('port', (process.env.PORT || 5000));

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(__dirname + '/public'));

// views is directory for all template files
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

function lookupResult(list, response) {
  list = list.split(/[\s,;|]+/);
  list = list.map(Function.prototype.call, String.prototype.trim);
  list = list.map(Function.prototype.call, String.prototype.toUpperCase);
  logger.info("Number of sandbox params", {num_entries: list.length} );
  pool.query('SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_id = ANY($1::text[])', [list], function (err, result) {
    if (err) {
      logger.error('Error executing query', {error: err.stack} );
      response.send('Error: ' + err);
    } else {
      qryres = result.rows;
      logger.info("Query result size", {num_results: qryres.length} );
      // check for empyt result set
      if (qryres.length <= 0) {
        logger.info('Not a valid sandbox instance - try again!');
        response.render('pages/index.ejs', { errors: [ 'Invalid instance name(s) - please try again!' ], input: list });
      } else {
        if (qryres.length == 1) {
          response.render('pages/upgrade', { results: qryres });
        } else {
          response.render('pages/multi-results', { results: qryres });
        }
      }
    }
  });
}

// Define session parameters for app
app.use(session({
  cookieName: 'session',
  secret: session_secret,
  duration: 15 * 60 * 1000,
  activeDuration: 5 * 60 * 1000,
  httpOnly: true,
  secure: true,
  ephemeral: true
}));

// Set current prod variable for session
app.use(function(req, res, next) {
  if (req.session.curr_prod_external && req.session.curr_preview_external) {
    res.locals.curr_prod_external = req.session.curr_prod_external;
    res.locals.curr_preview_external = req.session.curr_preview_external;
    next();
  } else {
    req.session.reset();
    logger.info('Query for current prod and preview release');
    //Querying USA952S and USA954S for setting sessions for Preview and Non-Preview release status
    pool.query("SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_id IN ('USA952S','USA954S') ORDER BY org_type", function (err, result) {  
      if (err) {
        logger.error('Error executing query',{error: err.stack });
        res.send('Error: ' + err);
      } else {
        //logger.info("Query result:", result);
        req.session.curr_prod_external = result.rows[0].external_rel_name;
        req.session.curr_preview_external = result.rows[1].external_rel_name;
        logger.info('Initialize new prod and preview release variable' );
        res.locals.curr_prod_external = req.session.curr_prod_external;
        res.locals.curr_preview_external = req.session.curr_preview_external;
        next();
      }
    }); 
  }
});

// Home page request
app.get('/', function (_request, response) {
  logger.info('Home page visit',{visit: 'home'});
  response.render('pages/index');
});

//Sandbox upgrade page request
app.get('/query', function(request, response) {
  var list = request.query.org_id;
    logger.info('Web query request', {visit: 'webquery'});
    
    var lquery = "/sandbox/".concat(list);
    response.redirect(302, lquery);
});

// Cheatsheet request
app.get('/cheatsheet', function (_request, response) {
    logger.info('Cheatsheet page visit', {visit: 'cheatsheet'});
    response.render('pages/cheatsheet');
});

app.get('/sandbox', function (_request, response) {
  logger.info('Sandbox home redirect', {visit: 'sandboxhome'});
  response.redirect('/sandbox/instances');
});

app.get('/sandbox/types', function (_request, response) {
  logger.info('Sandbox Overview page visit', {visit: 'sandboxtypes'});
  pool.query('SELECT count(id) AS "Count", org_type AS "Type", org_region AS "Region", external_rel_name AS "Release" FROM public.rel_org_type GROUP BY org_type, org_region, external_rel_name ORDER BY org_type DESC, org_region ASC', function (err, result) {
    if (err) {
      logger.error('Error executing query',{error: err.stack });
      response.send('Error ' + err);
    } else {
      response.render('pages/sandboxtypes', { results: result.rows });
    }
  });
});

app.get('/sandbox/instances', function (_request, response) {
  logger.info('Sandbox Instances page visit', {visit: 'sb-instances'});
  pool.query('SELECT org_id AS "Instance", org_type AS "Type", org_region AS "Region", external_rel_name AS "Release" FROM public.rel_org_type ORDER BY org_type DESC, org_region ASC, org_id ASC', function (err, result) {
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
