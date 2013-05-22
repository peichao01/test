var Article = new Meteor.Collection('article'),
		User = new Meteor.Collection('user');

Session.set('article_id', null);
Session.set('article', null);

var listTpl = Template.list,
		contentTpl = Template.content,
		mainTpl = Template.main;

if(Meteor.isClient){
	Template.header.events = {
		'click h1>a': function(){
			Router.changeTo('');
			return false;
		}
	};
}

mainTpl.display = function(_where){
	var state = 'list';
	if(Session.get('article_id')){
		state = 'content';
	}else{
		state = 'list';
	}
	if(Session.get('backend')){
		state = Session.get('backend');
	}
	return state === _where;
};
