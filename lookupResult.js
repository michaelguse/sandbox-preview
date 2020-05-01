var { qryres } = require("./index");
const { logger } = require("./index");
const { pool } = require("./index");
var qryres = "";

function lookupResult(list, response) {
    list = list.split(/[\s,;|]+/);
    list = list.map(Function.prototype.call, String.prototype.trim);
    list = list.map(Function.prototype.call, String.prototype.toUpperCase);
    logger.info("Number of sandbox params", {num_entries: list.length} );
    pool.query('SELECT id, internal_rel_name, external_rel_name, org_id, org_type FROM rel_org_type WHERE org_id = ANY($1::text[]) ORDER BY substring(org_id, 3)::INTEGER', [list], function (err, result) {
      if (err) {
        logger.error('Error executing query', {error: err.stack} );
        response.send('Error: ' + err);
      } else {
        qryres = result.rows;
        logger.info("Query result size", {num_results: qryres.length} );
        // check for empyt result set
        if (qryres.length <= 0) {
          logger.info('Not a valid sandbox instance - try again!');
          response.render('pages/index.ejs', { errors: [ 'Not a valid sandbox instance - try again!' ], input: list });
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
exports.lookupResult = lookupResult;