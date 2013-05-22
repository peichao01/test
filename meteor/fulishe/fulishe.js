if (Meteor.isClient) {
  Template.hello.greeting = function () {
    return "Welcome to fulishe.";
  };

  Template.hello.events({
    'click input' : function () {
      // template data, if any, is available in 'this'
      if (typeof console !== 'undefined')
        console.log("You pressed the button");
    }
  });

	Template.fulishe.events({
		'click .chi-huo': function(){
			alert('吃货の福利社，即将上线，敬请期待！');
		}
	});
}

if (Meteor.isServer) {
  Meteor.startup(function () {
    // code to run on server at startup
  });
}
