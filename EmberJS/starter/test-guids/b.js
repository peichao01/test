var App = {};

(function () {
	App.wife = Ember.Object.create({
		householdIncome: 80000
	});

	App.husband = Ember.Object.create({
		householdIncomeBinding: 'App.wife.householdIncome'
	});

	var income = App.husband.get('householdIncome');
	console.log(income);

	App.husband.set('householdIncome', 90000);
	income = App.husband.get('householdIncome');
	console.log(income);
	income = App.wife.get('householdIncome');
	console.log(income);


	App.user = Ember.Object.create({
		fullName: 'Kara Gates'
	});

	App.userView = Ember.View.create({
		userNameBinding: Ember.Binding.oneWay('App.user.fullName')
		// userNameBinding: 'App.user.fullName'
		// userNameBinding: Ember.Binding.bind('App.user.fullName')
	});

	App.user.set('fullName', 'Krang Gates');

	App.userView.set('userName', 'Truckasaurus Gates');
	var userFullName = App.user.get('fullName');
	console.log(userFullName);
	console.log(App.userView.get('userName'));
})();