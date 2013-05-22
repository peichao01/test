// Draw routes.  Locomotive's router provides expressive syntax for drawing
// routes, including support for resourceful routes, namespaces, and nesting.
// MVC routes can be mapped mapped to controllers using convenient
// `controller#action` shorthand.  Standard middleware in the form of
// `function(req, res, next)` is also fully supported.  Consult the Locomotive
// Guide on [routing](http://locomotivejs.org/guide/routing.html) for additional
// information.
module.exports = function routes() {
  this.root('pages#main');

	this.match('/users/:id', "users#get");

	this.match('register', 'passport#registerShow', {via: 'get', as: 'registerShow'});
	this.match('register', 'passport#registerDeal', {via: 'post'});
	this.match('login', 'passport#loginShow', {via: 'get'});
	this.match('login', 'passport#loginDeal', {via: 'post'});
	this.match('logout', 'passport#logout');
}
