function prepareResults(input) {
    var lres = [];
    /*
                //console.log(body);
                //response.send(`Response Body --- ${body}`);
                var respResult = [];
 
                const hdrfilter = '. | \
                                  { "key": .key, \
                                  "location": .location, \
                                  "environment": .environment, \
                                  "releaseVersion": .releaseVersion, \
                                  "releaseNumber": .releaseNumber, \
                                  "status": .status, \
                                  "isActive": .isActive }';
 
                const relfilter = '.Maintenances[] | \
                                    select(.isCore == true) | \
                                    select(.message.maintenanceType == "release") | \
                                    select(.name | contains("Major Release")) | \
                                    { "name" : .name, "start" : .plannedStartTime }';
                
                jq.run(hdrfilter, body, { input: 'string' })
                  .then((output) => {
                    console.log(`Org Info: ${output}`);
                    respResult.push(output);
 
                    // Nested jq invocation to extract release information
                    jq.run(relfilter, body, { input: 'string' })
                      .then((output) => {
                        console.log(`Release Info: ${output}`);
                        respResult.push(output);
                        //response.send(respResult.toString());
                        response.render('pages/domainresults.ejs', { results: respResult.toString() });
                      })
                      .catch((error) => {
                        console.error(error);
                        response.send(`JQ release error --- ${error}`);
                        // Something went wrong...
                      })
 
                  .catch((error) => {
                    console.error(error);
                    response.send(`JQ header error --- ${error}`);
                    // Something went wrong...
                  })
    */
    lres.push({
        "key": "NA174",
        "location": "NA",
        "environment": "production",
        "releaseVersion": "Spring '20 Patch 18.6",
        "releaseNumber": "224.18.6",
        "status": "OK",
        "isActive": true
    });
    return lres;
}
exports.prepareResults = prepareResults;
