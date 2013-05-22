module.exports = function() {
	var mongoose = this.mongoose = require('mongoose');
	mongoose.connect(this.get('db'));

	var mongooseTypes = this.mongooseTypes = require('mongoose-types');
	mongooseTypes.loadTypes(mongoose);
}
