var mongo = require('mongoose');
mongo.connect('mongodb://localhost/test');

var Cat = mongo.model('Cat', {name:String});

var kitty = new Cat({name: 'Zildjian'});
kitty.save(function(err){
	if(err) console.log('save error.');
	console.log('meow');
});

