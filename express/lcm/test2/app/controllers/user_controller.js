var locomotive = require('locomotive');
var Controller = locomotive.Controller;

var UserController = new Controller;

UserController.feedCreate = function(){
	var param = this.req.body;

}

UserController.feedShow = function(){
	this.title = '个人主页 | feed 展示';
	this.render();
}

module.exports = UserController;