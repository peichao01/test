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
			console.log(this.get('fullName'));
		}.observes('lastName'),

		fullNameChanged: function(){
			// console.log(arguments);
			// console.log(this.get('fullName'));
		}.observes('fullName').on('init')
	});

	var person = Person.create({
		// firstName: 'Yehuda',
		// lastName: 'Katz'
	});

	// person.set('firstName', 'Brohuda');
	person.set('lastName', 'Chao');

})();