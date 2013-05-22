var locomotive = require('locomotive');
var passport = require('passport');
var Controller = locomotive.Controller;

var User = require('../models/User');
var PassportController = new Controller();

PassportController.loginShow = function(){
	if(this.req.isAuthenticated())
		return this.res.redirect(this.urlFor({controller: 'page', action: 'main'}));
	this.title = '登录页';
	this.render();
}

PassportController.loginDeal = function(){
	passport.authenticate('local', {
		successRedirect: this.urlFor({controller: 'page', action: 'main'}),
		failureRedirect: this.urlFor({action: 'loginShow'})
	})(this.req, this.res, this.next);
}

PassportController.registerShow = function(){
	this.title = '注册页';
	this.render();
}

PassportController.registerDeal = function(){
	var param = this.req.body;
	//console.log('============= 1 =============');
	if(param.password !== param.password_re || !param.email || !param.nick)
		return this.redirect(this.urlFor({action: 'registerShow'}));

	var user = new User();
	console.log('new user.');
	user.email = param.email;
	user.password = param.password;
	user.nick = param.nick;

	user.save(function(err){
		console.log('save user error: ', err);
		if(err) return this.redirect(this.urlFor({action: 'registerShow'}));

		return this.redirect(this.urlFor({action: 'loginShow'}));
	}.bind(this));
}

PassportController.logout = function(){
	this.req.logout();
	this.redirect('/');
}

module.exports = PassportController;