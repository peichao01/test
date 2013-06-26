// Draw routes.  Locomotive's router provides expressive syntax for drawing
// routes, including support for resourceful routes, namespaces, and nesting.
// MVC routes can be mapped mapped to controllers using convenient
// `controller#action` shorthand.  Standard middleware in the form of
// `function(req, res, next)` is also fully supported.  Consult the Locomotive
// Guide on [routing](http://locomotivejs.org/guide/routing.html) for additional
// information.
module.exports = function routes() {
  this.root('page#main');

	//登录注册
	this.match('/login', 'passport#loginShow', {via: 'GET', as: 'loginShow'});
	this.match('/login', 'passport#loginDeal', {via: 'POST'});

	this.match('/register', 'passport#registerShow', {via: 'GET', as: 'registerShow'});
	this.match('/register', 'passport#registerDeal', {via: 'POST'});

	this.match('/logout', 'passport#logout', {as: 'logout'});

	//用户页面
	this.match('/user', 'user#feedCreate', {via: 'POST', as: 'feedCreate'});
	this.match('/user', 'user#feedShow', {via: 'GET', as: 'feedShow'});
}
