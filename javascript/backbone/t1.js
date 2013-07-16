(function($){
	//$(function(){

		var ListView = Backbone.View.extend({
			el: $('body'),
			initialize: function(){
				_.bindAll(this, 'render');

				console.log($('body'));
				console.log(this.el);

				this.render();
			},

			render: function(){
				$(this.el).append('<ul><li>Hello World</li></ul>');
			}
		});
		var listView = new ListView();

	//});
})(jQuery);