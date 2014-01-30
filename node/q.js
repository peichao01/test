var Q = require('q'),
	fs = require('fs');
var fs_readFile = Q.denodify(fs.readFile);
var promise = fs_readFile('myfile.txt');
promise.then(console.log, console.err);
