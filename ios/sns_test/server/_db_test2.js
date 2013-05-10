var mongoose = require('mongoose');
var db = mongoose.connection;
mongoose.connect('mongodb://localhost/test');

db.on('error', function(){
	console.error('connection error:');
});
db.once('open', function callback(){
	var kittySchema = mongoose.Schema({
		name:String
	});
	kittySchema.methods.speak = function(){
		var greeting = this.name ? "Meow name is " + this.name
								: "I don't have a name"
		console.log(greeting);
	}

	var Kitten = mongoose.model('Kitten', kittySchema);
	
	var silence = new Kitten({name:'Silence'});
	var fluffy = new Kitten({name:'fluffy'});
	console.log(silence.name);
	fluffy.speak();

	fluffy.save(function(err, fluffy){
		if(err) console.error('save fluffy errored.');
		fluffy.speak();
	});
});
