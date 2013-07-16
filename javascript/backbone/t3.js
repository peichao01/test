(function($){

	var debug = 1;//2

	var Item = Backbone.Model.extend({
		defaults: {
			part1: 'Hello',
			part2: 'World'
		}
	});

	var List = Backbone.Collection.extend({
		model: Item
	})

	var ListView = Backbone.View.extend({
		el: $('body'),

		events: {
			'click button#add': 'addItem'
		},

		initialize: function(){
			_.bindAll(this, 'render', 'addItem', 'appendItem');

			this.collection = new List();
			this.collection.bind('add', this.appendItem);

			this.counter = 0;
			this.render();
		},

		render: function(){
			$('<button id="add">add Item</button>').appendTo(this.$el);
			this.$el.append('<ul>');

			_(this.collection.models).each(function(item, index){
				this.appendItem(item)
			}, this);
		},

		addItem: function(){
			if(debug === 1){
				this.collection.add(new Item());
			} else {
				var model = new Item();
				model.set({
					part2: model.get('part2') + this.counter++
				});
				this.collection.add(model);
			}
		},

		appendItem: function(model){
			if(debug === 1){
				this.$el.find('ul').append('<li>' + model.get('part1') + ' ' + model.get('part2') + this.counter++ + '</li>');
			} else {
				this.$el.find('ul').append('<li>' + model.get('part1') + ' ' + model.get('part2') + '</li>');
			}
		}
	});

	var listView = new ListView();

})(jQuery);