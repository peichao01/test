redis = require 'redis'
client1 = redis.createClient()
client2 = redis.createClient()
msg_count = 0

client1.on 'subscribe', (channel, count)->
	console.log "client1's subscriptions count is #{count}"
	client2.publish 'a nice channel', 'I am sending a message.'
	client2.publish 'a nice channel', 'I am sending a second message.'
	client2.publish 'a nice channel', 'I am sending my last message.'

client1.on 'unsubscribe', (channel, count)->
	console.log "client1's subscriptions count is #{count}"

client1.on 'message', (channel, message)->
	console.log "client1 channel #{channel}: #{message}"
	#msg_count++
	#if msg_count is 3
	if ++msg_count is 3
		client1.unsubscribe()
		client1.quit()
		client2.quit()

client1.incr 'did a thing'
client1.subscribe 'a nice channel'
