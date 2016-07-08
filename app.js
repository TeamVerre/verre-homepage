var express = require('express');
var app = express();
var path = require('path');

var PORT = 3000;

app.use('/', express.static('../public'));

app.listen(PORT, function () {
  console.log('Verre Homepage - listening on port: ', PORT);
});