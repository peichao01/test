redis = require 'redis'
client = redis.createClient()

client.on 'error', (err) ->
	console.log err

client.set 'string key', 'string val'
client.get 'string key', (err, value) ->
	console.log value

#client.end()
client.quit()
