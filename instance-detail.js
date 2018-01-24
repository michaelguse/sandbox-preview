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
        var output = "";
        output += "\n" + data.key;
        //output += " [ " + data.environment;
        output += " - " + data.releaseVersion;
        console.log(output);

        console.log("Upcoming Maintenance Events:");

        var maintArray = [];

        data.Maintenances.forEach(element => {

            var end = new tc.DateTime(element.plannedEndTime);
            var start = new tc.DateTime(element.plannedStartTime);

            if (element.isCore && element.affectsAll && (now < end)) {
                
                var maintRecord = [];

                maintRecord.push(data.key);
                maintRecord.push(element.name);
                maintRecord.push(element.plannedStartTime);
                maintRecord.push(element.plannedEndTime);

                var duration = start.diff(now);  // unit-aware duration
                maintRecord.push(duration.days().toFixed(0));

                maintArray.push(maintRecord);
            }

        })

        //console.log("Before sort:\n", maintArray);

        maintArray = maintArray.sort(
            function(a, b) { 

                var an = +a[4];
                var bn = +b[4];
       
                if (!isNaN(an) && !isNaN(bn)) {
                    return an - bn;
                } 
                return a<b ? -1 : a>b ? 1 : 0;
            }
        )

        maintArray.forEach(record => {
            var output = "";
            output += "\t" + record[1] + " in ";
            output += record[4] + " days on " + record[2].slice(0,10);
            console.log(output);
        })

        //console.log("After sort\n:", maintArray);
    })
    
});