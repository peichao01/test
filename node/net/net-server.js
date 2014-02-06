var net = require('net');

var server = net.createServer(function(socket){

	socket.on('data', function(data){
		socket.write('你好');
	});

	socket.on('end', function(){
		console.log('链接断开');
	});

	socket.write('欢迎光临《深入浅出Node.js》示例：\n');
});

var link = 8124;
//var link = '/tmp/echo.sock';
server.listen(link, function(){
	console.log('server bound');
});