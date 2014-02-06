var child = require('child_process').fork('child_process_sending_server_child.js');

var server = require('net').createServer();
server.on('connection', function(socket){
	socket.end('handled by parent');
});
server.listen(1344, function(){
	child.send('server', server);
});
