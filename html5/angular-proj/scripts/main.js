define(function(require){
	require('mods/directives/vHeaderDirective');

	domready(function(){
		var body = document.body;

		var myapp = angular.module('myapp', []);


		angular.bootstrap(body, ['myapp']);
	});
});