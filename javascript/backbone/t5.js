(function($){

	var Item = Backbone.Model.extend({
		defaults: {
			part1: 'Hello',
			part2: 'World'
		}
	});

	var List = Backbone.Collection.extend({
		model: Item
	});

	var ItemView = Backbone.View.extend({
		tagName: 'li',
		events: {
			'click .swap': 'swap',
			'click .delete': 'remove'
		},
		initialize: function(){
			_.bindAll(this, 'render', 'unrender', 'swap', 'remove');

			this.model.on('change', this.render);
			this.model.on('destroy', this.unrender);
		},
		render: function(){
			this.$el.html('<span>'+ this.model.get('part1') + ' ' + this.model.get('part2') + '<span style="color:blue;" class="swap">[swap]</span><span style="color:red;" class="delete">[delete]</span></span>');
			return this;
		},
		unrender: function(){
			this.$el.remove();
		},
		swap: function(){
			var model = {
				part1: this.model.get('part2'),
				part2: this.model.get('part1')
			};
			this.model.set(model);
		},
		remove: function(){
			this.model.destroy();
		}
	});

	var ListView = Backbone.View.extend({
		el: $('body'),

		events: {
			'click button#add': 'addItem'
		},

		initialize: function(){
			_.bindAll(this, 'addItem', 'render');

			this.collection = new List();
			this.collection.on('add', this.appendItem);

			this.counter = 0;
			this.render();
		},

		render: function(){
			$('<button id="add">add Item</button>').appendTo(this.$el);
			this.$el.append('<ul>');
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
			$('ul', this.el).append(itemView.render().el);
		}
	});

	var listView = new ListView();
	window.listView = listView;

})(jQuery);