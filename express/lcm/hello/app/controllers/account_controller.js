var locomotive = require('locomotive'),
		Controller = locomotive.Controller;

var Account = require('../models/account');
var AccountController = new Controller();

Account.show = function(){
	if(!this.req.isAuthenticated())
		return this.res.redirect(this.urlFor({action: 'loginShow'}));

	this.user = this.req.user;
	this.render();
}

AccountController.registerShow = function(){
	this.title = '注册';
	//this.res.send(JSON.stringify(this));
	//this.res.send(printObj(this));
	//this.res.send(this.__req == this.req == this.request);
	//this.res.send(printObj(this.request));
	this.render();
}

AccountController.registerDeal = function(){
	//this.res.send(printObj(this.req.body), 3);
	//this.res.send(JSON.stringify(this.req));
	//this.render();
	var account = new Account();
	console.log('shit');

	account.email = this.param('email');
	account.password = this.param('password');
	account.name.first = this.param('name.first');
	account.name.last = this.param('name.last');

	var self = this;
	account.save(function(err){
		if(err)
			return self.redirect(self.urlFor({action: 'registerShow'}));

		return self.redirect(self.urlFor({action: 'loginShow'}));
	})
}

AccountController.loginShow = function(){
	this.render();
}

AccountController.loginDeal = function(){
	passport.authenticate('local', {
		successRedirect: this.urlFor({action: ''}),
		failureRedirect: this.urlFor({action: 'loginShow'})
	})(this.req, this.res, this.next);
}

AccountController.logout = function(){
	this.req.logout();
	this.redirect('/');
}

function printObj(obj, depth){
	var str = [];
	for(var key in obj){
		var value = obj[key], type = typeof value, isPlainObj = type=='object' && value && value.length===undefined;
		if(type == 'function') value = '[object Function]';
		if(isPlainObj && depth > 0) {
			value = printObj(value, depth-1);
			str.push('"'+key+'":' + value);
		}else{
			str.push('"'+key+'":"' + value + '"');
		}
	};
	str = '{' + str.join(',') + '}';
	return str;
}

module.exports = AccountController;