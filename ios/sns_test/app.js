var express = require('express');
var db = require('./server/db'),
	router = require('./server/router');

var app = express();

var port = 3000;

db.init(function(db_href){
	console.log('db connect successfully on: ' + db_href);

	app.set('views', __dirname + '/front_web/view');
	app.set('view engine', 'jade');
	app.set('view options', {layout: true});

	app.use(express.logger());
	app.use(express.compress());
	app.use(express.bodyParser());
	app.use(express.methodOverride());
	app.use(express.cookieParser());
	app.use(express.static('./front_web/public'))
	app.use(router(__dirname));

	app.listen(port, function(){
		console.log('app listened on: http://localhost:' + port);
	});
});
