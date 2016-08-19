var express = require('express');
var app = express();
var request = require("request");

app.get('/health.json', function (req, res) {
	res.setHeader('Content-Type', 'application/json');
	res.send(JSON.stringify({"status":"UP"}));
});

app.get('/hosts/:appName', function (req, res) {
	res.setHeader('Content-Type', 'application/json');
	var appName = req.params.appName;
	request("http://localhost:8086/hosts/" + appName, function(error, response, body) {
	  res.send(body);
	});
});


app.listen(process.env.PORT || 80, function () {
  console.log('Example app listening on port ' + (process.env.PORT || 80));
});