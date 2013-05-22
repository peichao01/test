var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

var User = require('../../app/models/User');//this.model('User');

passport.use(new LocalStrategy(
	{
		usernameField: 'email'
	},
	function(email, password, done){
		/*User.findOne({email: email}, function(err, user){
			if(err) return done(err);
			if(!user) return done(null, false);
		});*/
		User.authenticate(email, password, function(err, user){
			return done(err, user);
		});
	}
));

passport.serializeUser(function(user, done){
	done(null, user._id);
});

passport.deserializeUser(function(_id, done){
	User.findById(_id, function(err, user){
		done(err, user);
	});
});