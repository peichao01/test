net = require 'net'
HOST = '192.168.11.133'
PORT = 6969

client = new net.Socket()
client.connect PORT, HOST, ->
	console.log "CONNECTED TO: #{HOST}:#{PORT}"
	client.write "I am Chuck Norris!"
client.on 'data', (data)->
	console.log "DATA: #{data}"
	client.destroy()
client.on 'close', ->
	console.log "Connection closed"
