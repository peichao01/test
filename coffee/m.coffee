weatherReport = (location) ->
	[location, 72, "Mostly Sunny"]

[city, temp, forecast] = weatherReport "Berkeley, CA"

console.log city, temp, forecast
