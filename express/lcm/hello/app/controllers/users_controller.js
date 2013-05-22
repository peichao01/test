var locomotive = require('locomotive')
  , Controller = locomotive.Controller;

var UsersController = new Controller();

UsersController.get = function() {
  this.title = 'user title';
	this.userid = this.param('id');
  this.render();
}

module.exports = UsersController;