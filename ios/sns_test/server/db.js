var mongoose = require('mongoose');

var db_name = 'test_sns1';
var db_href = 'mongodb://localhost/' + db_name

var UserSchema, User;


/**
 * callback args:
 *	db_href String
 */
exports.init = function(open_cb){
	mongoose.connect(db_href);
	var db = mongoose.connection;
	db.on('error', function(){
		console.error('error to connect mongodb:' + db_href);
	});
	db.on('open', function(){
		UserSchema = mongoose.Schema({
			name:String,
			password:String,
			//0:male, 1:female
			sex:Number,
			email:String
		});

		User = mongoose.model('User', UserSchema);

		open_cb(db_href)
	});
}

exports.getUser = function(){
	return User;
}

exports.delUrl = function(name, cb){
	//User.findOneAndRemove({name: name}, cb);
	cb();
}

exports.addUser = function(schema, cb){
	var user = new User(schema);

	user.save(cb);

	return user;
}

exports.findUser = function(email, cb){
	User.find({email: email}, cb);
}