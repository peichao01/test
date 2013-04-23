var app = require('http').createServer(handler)
  , io = require('socket.io').listen(app)
  , fs = require('fs')
	, redis = require('redis').createClient()
	, readRedisInterval = 100;

app.listen(8080);

function handler (req, res) {
  fs.readFile(__dirname + '/index.html',
  function (err, data) {
    if (err) {
      res.writeHead(500);
      return res.end('Error loading index.html');
    }

    res.writeHead(200);
    res.end(data);
  });
}

io.sockets.on('connection', function (socket) {
  /*socket.emit('news', { hello: 'world' });
  socket.on('my other event', function (data) {
    console.log(data);
  });*/
	var prevNotify;
	setInterval(function(){
		var notify = redis.get('notify', function(err, notifyCount){
			if(err){
			}else{
				if(notifyCount != prevNotify){
					socket.emit('notify', notifyCount);
					prevNotify = notifyCount;
				}
			}			
		});
	}, readRedisInterval);

	socket.on('set-notify', function(data){
		redis.set('notify', data);
	});
});
