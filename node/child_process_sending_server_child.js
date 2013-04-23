process.on('message', function(msg, server){
	if(msg === 'server'){
		server.on('connection', function(socket){
			socket.end('handled by child');
		});
	}
});
