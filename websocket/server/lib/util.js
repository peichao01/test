// Generated by CoffeeScript 1.6.2
(function() {
  module.exports = {
    extend: function(dest, source) {
      var prop;

      for (prop in source) {
        if (source.hasOwnProperty(prop)) {
          dest[prop] = source[prop];
        }
      }
      return dest;
    }
  };

}).call(this);