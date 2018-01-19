var Client = require('node-rest-client').Client;
var tc = require("timezonecomplete");   

var instanceArray = [];
for (var i=2; i < process.argv.length; i++) {
    instanceArray.push(process.argv[i]);
}

var now = new tc.DateTime();

var client = new Client();
 
// registering remote methods 
client.registerMethod("getInstanceStatus", "https://api.status.salesforce.com/v1/instances/${instanceKey}/status", "GET");

instanceArray.forEach(instance => {

    var args = {
        path: { "instanceKey": instance } // path substitution var 
    };

    client.methods.getInstanceStatus(args, function (data) {
        // parsed response body as js object 
        console.log("Key: ", data.key);
        console.log("Environment: ",data.environment);
        console.log("Release Version: ",data.releaseVersion);
        console.log("Upcoming Maintenance Events:");

        data.Maintenances.forEach(element => {

            var end = new tc.DateTime(element.plannedEndTime);
            var start = new tc.DateTime(element.plannedStartTime);

            if (element.isCore && element.affectsAll && (now < end)) {
                var duration = start.diff(now);  // unit-aware duration
                console.log("\t" + element.name + " in " + duration.days().toFixed(0) + " days");
            }
        })
        // raw response 
        //console.log(response.);
    })
});