(function($){

	var ListView = Backbone.View.extend({
		el: $('body'),

		events: {
			'click button#add': 'addItem'
		},

		initialize: function(){
			_.bindAll(this, 'addItem', 'render');

			this.counter = 0;
			this.render();
		},

		render: function(){
			$('<button id="add">add Item</button>').appendTo(this.$el);
			this.$el.append('<ul>');
		},

		addItem: function(){
			this.$el.find('ul').append('<li>这是第' + (this.counter++) + '个Item</li>');
		}
	});

	var listView = new ListView();

})(jQuery);