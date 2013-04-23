client = require('redis').createClient()

client.hmset 'hosts', 'mjr', '1', 'another', '23', 'home', '1234'
client.hgetall 'hosts', (err, obj) ->
	console.dir obj

client.hmset 'key2', 
	'0123456789': 'abcdefghijklmn'
	'some manner of key': 'a type of value'
client.hgetall 'key2', (err, obj)->
	console.dir obj

client.quit()
