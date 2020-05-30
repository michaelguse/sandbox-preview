const Pool = require('pg-pool');
const url = require('url');
var request = require('request');
var jsonDiff = require('json-diff');

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

var pool = new Pool(config());

function checkTrust() {

  // query trust for latest list of active sandboxes
  var options = {
    url: 'https://api.status.salesforce.com/v1/instances/'
  };

  function callback(error, response, body) {
    if (!error && response.statusCode == 200) {
        console.log(body);
    }
  }

  request(options, callback);

  // persist latest result in DB

    // design table to hold current and previous result JSON string
    // 

  // compare latest result with previous result from DB
  // leverage json-diff for the comparison

  // email results to me

  pool.query('SELECT count(id) AS "Count",org_type AS "Type",external_rel_name AS "Release" FROM public.rel_org_type GROUP BY org_type, external_rel_name', function (err, result) {
    if (err) {
      console.log('Error executing query',{error: err.stack });
      response.send('Error ' + err);
    } else {
      response.render('pages/sandboxtypes', { results: result.rows });
    }
  });

  /*
  echo "List of active sandboxes from Salesforce Trust:"
  echo 
  echo "Instance,Release Version,Location,Status,Count"

  if test -f sfTrustResult.new; then
    mv sfTrustResult.new sfTrustResult.old
  fi

  curl -sS https://api.status.salesforce.com/v1/instances/ | jq -r -f countAllInst.jq | awk '{printf("%s,%d\n", $0, NR)}' > sfTrustResult.new

  cat sfTrustResult.new

  diff sfTrustResult.new sfTrustResult.old > diffResult.txt

  echo
  if test -s diffResult.txt; then
    echo "Difference between current and last run results:"
    cat diffResult.txt
  else
    echo "No changes detected!"
  fi
  echo
  */
}

checkTrust();
