var http = require("http");
var args = process.argv.slice(2)[0]

var options = {  
    host : args + ".loca.lt",
    port : "80",
    timeout : 2000
};

var request = http.request(options, (res) => {  
    console.log(`STATUS: ${res.statusCode}`);
    if (res.statusCode == 200 || res.statusCode == 301) {
        process.exit(0);
    }
    else {
        process.exit(1);
    }
});

request.on('error', function(err) {  
    console.log('ERROR');
    process.exit(1);
});

request.end();  
