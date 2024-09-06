var express = requires('express');

// Constants
var PORT=8081

// App

var app = express();

app.get('/', function(req, res) {
   res.sendfile('/src/index.html');
});

app.listen(PORT);
console.log('Running on port ' + PORT);
