"use strict";

(function(){
	var App = App || {};
	App.TodosController = Ember.Controller.extend({
		todos: [
			Ember.Object.create({
				isDone: false
			})
		],
		remaining: function () {
			var todos = this.get('todos');
			return todos.filterBy('isDone', false).get('length');
		}.property('todos.@each.isDone')
	});

	App.todosController = App.TodosController.create();
	var remaining = App.todosController.get('remaining');
	console.log(remaining);

	var todos = App.todosController.get('todos');
	var todo = todos.objectAt(0);
	todo.set('isDone', true);

	remaining = App.todosController.get('remaining');
	console.log(remaining);


	var Person = Ember.Object.extend({
		firstName: null,
		lastName: null,

		fullName: function(){
			var firstName = this.get('firstName');
			var lastName = this.get('lastName');

			return firstName + ' ' + lastName;
		}.property('firstName', 'lastName'),

		lastNameChanged: function(){
			// console.log(this.get('fullName'));
		}.observes('lastName'),

		fullNameChanged: function(){
			// console.log(arguments);
			// console.log(this.get('fullName'));
		}.observes('fullName').on('init')
	});

	Person.reopen({
		partOfNameChanged: function(){
			// this.processFullName();
			Ember.run.once(this, 'processFullName');
		}.observes('firstName', 'lastName'),

		processFullName: function(){
			console.log(this.get('fullName'));
		}
	});

	var person = Person.create({
		firstName: 'Yehuda',
		lastName: 'Katz'
	});

	// person.set('firstName', 'Brohuda');
	// person.set('lastName', 'Chao');


	var PP = Ember.Object.extend({
		init: function(){
			this.set('salutation', 'Mr/Ms');
		},

		salutationDidChange: function(){
			// console.log('salutation changed');
			console.log(this.get('salutation'));
		}.observes('salutation').on('init')
	});
	PP.reopen({
		salutationDidChange2: function(){
			console.log('salutation 2');
		}.observes('salutation'),

		salutationDidChange3: Ember.observer('salutation', function(){
			console.log('salutation 3');
		}),

		salutationDidChange4: function(){
			console.log('salutation 4');
		}.observes('salutation')
	});

	var pp = PP.create({
		salutation: 'mr'
	});
	pp.addObserver('salutation', function(){
		console.log('salutation instance');
	});

	var pp2 = PP.create({
		salutation: 'mm'
	});

	pp.set('salutation', 'ms');
	pp2.set('salutation', 'ms2');
})();