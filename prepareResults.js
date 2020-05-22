const dns = require('dns');
let rp = require('request-promise');
var async = require('async');

// Define the upcoming release
const nextRelease = process.env.NEXT_RELEASE;


function getNextReleaseDate(maintenances) {

    var nextReleaseDate = "Not Defined";

    maintenances.forEach(element => {

        if (element.name == nextRelease) {
            nextReleaseDate = element.plannedStartTime;
        }
    });

    return nextReleaseDate;
}

async function lookupDomain(domain) {
    var orgInstance;

    try {
        dns.resolveCname(domain + '.my.salesforce.com', (err, addresses) => {
            if (err) throw err;
            console.log(`Addresses: ${addresses}`);
            orgInstance = addresses[0].split(".")[0].split("-")[0];
        });
     } catch (error) {
        console.error(error);
     } 

     return orgInstance;
}

async function lookupTrust(org_id) {

    var orgInfo = {};

    var url = `https://api.status.salesforce.com/v1/instances/${org_id}/status?childProducts=false`;
        
    rp.get(url)
      .then(function (resp) {
        if (resp.status == 200) {
        
            var lobj = resp.data;
            console.log('Parsed response data:');
            console.log('...');

            console.log(`Lookup Trust: ${org_id}`);
            
            orgInfo = {
                "instance": lobj.key,
                "location": lobj.location,
                "environment": lobj.environment,
                "releaseVersion": lobj.releaseVersion,
                "releaseNumber": lobj.releaseNumber,
                "status": lobj.status,
                "isActive": lobj.isActive,
                "nextRelease": nextRelease,
                "nextReleaseDate": getNextReleaseDate(lobj.Maintenances)
            };

            return orgInfo;

        } else {
            console.log(`Error - Response Status Code: ${resp.statusCode}`);
        }
    }) 
    .catch(function (error) {
        if (error.response) {
            // The request was made and the server responded with a status code
            // that falls out of the range of 2xx
            console.log(error.response.data);
            console.log(error.response.status);
            console.log(error.response.headers);
        } else if (error.request) {
            // The request was made but no response was received
            // `error.request` is an instance of XMLHttpRequest in the browser and an instance of
            // http.ClientRequest in node.js
            console.log(error.request);
        } else {
            // Something happened in setting up the request that triggered an Error
            console.log('Error', error.message);
        }
        console.log(error.config);
    }); 
}

function prepareResults(domainList) {

    var orgList = [];
    var resList = [];

    // todo - add promise.all to join updates before the functiona returns 
    // for help see Mozilla article - https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Async_await

    for (var domain of domainList) {        
        orgList.push(lookupDomain(domain));  
    }

    console.log(`Org List: ${orgList}`);

    for (var org of orgList) {
        resList.push(lookupTrust(org));
    }

    console.log(`Result List: ${resList}`);

    console.log('Array length: ' + resList.length);
    console.log(resList);

    return resList;
}

exports.prepareResults = prepareResults;
