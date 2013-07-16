(function($){

	var Item = Backbone.Model.extend({
		defaults: {
			'part1': 'hello',
			'part2': 'world'
		}
	});

	var List = Backbone.Collection.extend({
		model: Item
	});

	var ItemView = Backbone.View.extend({
		tagName: 'li',
		initialize: function(){
			_.bindAll(this, 'render');
		},
		render: function(){
			this.$el.html('<span>'+ this.model.get('part1') + ' ' + this.model.get('part2') +'</span>');
			return this;
		}
	});

	var ListView = Backbone.View.extend({
		el: $('body'),
		events: {
			'click button#add': 'addItem'
		},

		initialize: function(){
			_.bindAll(this, 'addItem', 'appendItem', 'render');

			this.collection = new List();
			this.collection.on('add', this.appendItem);

			this.counter = 0;
			this.render();
		},

		render: function(){
			this.$el.append('<button id="add">add Item</button><ul></ul>');
		},

		addItem: function(){
			var item = new Item();
			item.set({
				part2: item.get('part2') + this.counter++
			});
			this.collection.add(item);
		},

		appendItem: function(item){
			var itemView = new ItemView({
				model: item
			});
			this.$el.find('ul').append(itemView.render().el);
		}
	});

	var listView = new ListView();

})(jQuery);