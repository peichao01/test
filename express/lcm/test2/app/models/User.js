var mongoose = require('mongoose');
var Schema = mongoose.Schema;
var Email = mongoose.SchemaTypes.Email;

var bcrypt = require('bcrypt');

var UserSchema = new Schema({
	email: { type: Email },

	pwdSalt: { type: String, required: true },
	pwdHash: { type: String, required: true },

	nick: { type: String }
});

UserSchema.virtual('password').get(function(){
	return this._password;
}).set(function(password){
		this._passwordField = password;
		this.pwdSalt = bcrypt.genSaltSync(10);
		this.pwdHash = bcrypt.hashSync(password, this.pwdSalt);
	});

UserSchema.methods.checkPassword = function(password, callback){
	bcrypt.compare(password, this.pwdHash, callback);
}

UserSchema.statics.authenticate = function(email, password, callback){
	this.findOne({email: email}, function(err, user){
		if(err) return callback(err);
		if(!user) return callback(null, false);

		user.checkPassword(password, function(err, correct){
			if(err) return callback(err);
			if(!correct) return callback(null, false);

			return callback(null, user);
		});
	});
}

module.exports = mongoose.model('User', UserSchema);