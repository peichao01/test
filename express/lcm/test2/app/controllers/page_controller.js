var locomotive = require('locomotive')
  , Controller = locomotive.Controller;

var PagesController = new Controller();

PagesController.main = function() {
	if(!this.req.isAuthenticated())
		return this.res.redirect(this.urlFor({controller: 'passport', action: 'loginShow'}));

  this.title = 'Locomotive'
  this.render();
}

module.exports = PagesController;
