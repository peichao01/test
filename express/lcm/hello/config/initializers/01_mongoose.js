module.exports = function() {
	// Define custom MIME types.  Consult the mime module [documentation](https://github.com/broofa/node-mime)
	// for additional information.
	var mongoose = this.mongoose = require('mongoose');
	mongoose.connect(this.get(''));

	var mongooseTypes = this.mongooseTypes = require('mongoose-types');
	mongooseTypes.loadTypes(mongoose);
}
