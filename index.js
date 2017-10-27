const Pool = require('pg-pool');
const url = require('url');

const params = url.parse(process.env.DATABASE_URL||'postgres://mguse:@localhost:5432/mguse');
const auth = params.auth.split(':');
var sslValue = true;

if (params.hostname == 'localhost')
  { sslValue = false }  

const config = {
  user: auth[0],
  password: auth[1],
  host: params.hostname,
  port: params.port,
  database: params.pathname.split('/')[1],
  ssl: sslValue
};

const pool = new Pool(config);

var express = require('express');
var app = express();

app.set('port', (process.env.PORT || 5000));

app.use(express.static(__dirname + '/public'));

// views is directory for all template files
app.set('views', __dirname + '/views');
app.set('view engine', 'ejs');

app.get('/', function(request, response) {
  response.render('pages/index');
});

app.get('/db', function (request, response) {
  pool.query('SELECT * FROM rel_org_type', function(err, result) {
      if (err)
       { console.error(err); response.send("Error " + err); }
      else
       { response.render('pages/db', {results: result.rows} ); }
  });
});

app.listen(app.get('port'), function() {
  console.log('Node app is running on port', app.get('port'));
});
