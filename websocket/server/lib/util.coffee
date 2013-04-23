module.exports = 
	extend: (dest, source)->
		for prop of source
			dest[prop] = source[prop] if source.hasOwnProperty prop 
		return dest
