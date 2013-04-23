redis = require 'redis'
client = redis.createClient()

client.get 'notify', (err, notifyCount)->
	if err
		console.log err
	console.log notifyCount

client.quit()
