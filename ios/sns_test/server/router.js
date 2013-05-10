var db = require('./db');

var api = {

};

var ajax = {

};

var ios = {

};


module.exports = function(dirname){
	return function(req, res){
		//console.log(req.cookie);
		//res.send(req.url);
		var url = req.url;
		url == '/' && (url = '/index.html');

		if(url.match(/^\/api\//)){
			var query = req.query;
			if(url.indexOf('/api/user/add') >= 0){
				//res.send(JSON.stringify(req.query));
				if(query.name && query.email && query.password){
					db.addUser({name: query.name, email:query.email, password: query.password}, function(err, user){
						if(err){
							res.send(JSON.stringify({
								err: 100,
								msg: "add user failed."
							}))
						}else{
							res.send(JSON.stringify({
								err: 200,
								msg: "add user success."
							}))
						}
					});
				}else{
					res.send({
						err: 404
					});
				}
			}else if(url.indexOf('/api/user/get') >= 0){
				/*res.send(JSON.stringify({
					query: query
				}));
				return;*/
				if(query.all == "true"){
					db.getUser().find(function(err, users){
						res.send(JSON.stringify(users));
					});
				}else if(query.name){
					db.getUser().find({name: query.name}, function(err, user){
						if(err) res.send(JSON.stringify({err:106}));
						else res.send(JSON.stringify(user));
					});
				}else{
					res.send(JSON.stringify({
						err: 100
					}));
				}
			}else if(url.indexOf('api/user/del') >= 0){
				if(query.name){
					db.delUrl(query.name, function(err, user){
						if(err) res.send(JSON.stringify({
							err: 105,
							msg: err
						}))
						res.send(JSON.stringify({
							err: 200,
							msg: 'del user success.'
						}))
					})
				}
			}else{
				res.send('{"err":104}');
			}
		}else{
			db.getUser().find(function(err, users){
				if(err) users = [];
				res.render('index', {
					pageTitle: 'index -- sns test',
					users: users
				});
				//res.send('aaa');
			});
		}
		/*res.send(JSON.stringify({
			err: 110
		}));*/
	}
}
