redis = require 'redis'
client = redis.createClient()
set_size = 20

client.sadd 'bigset', 'a member'
client.sadd 'bigset', 'another memeber'

while set_size > 0
	client.sadd 'bigset', "member #{set_size}"
	set_size--

client.multi()
	.scard('bigset')
	.smembers('bigset')
	.keys '*', (err, replies)->
		client.mget replies, redis.print
	.dbsize()
	.exec (err, replies)->
		console.log "MULTI got #{replies.length} replies"
		replies.forEach (reply, index)->
			console.log "Reply #{index}: #{reply.toString()}"
