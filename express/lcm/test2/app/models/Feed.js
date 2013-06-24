var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var FeedSchema = new Schema({
	title:{type: String},
	content: {type: String},
	userid: {type: String}
});

/*FeedSchema.statics.authenticate = function(title, content, userid, callback){
	if(!title || !content || !userid){
		//this.res.redirect(this.urlFor(this.re))
		return callback('error');
	}else{
		this.findOne({})
	}
}*/

module.exports = mongoose.model('Feed', FeedSchema);