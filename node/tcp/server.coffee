net = require 'net'
HOST = '192.168.11.133'
PORT = 6969

app = net.createServer (sc)->
	console.log "CONNECTION: #{sc.remoteAddress}: #{sc.remotePort}"
	sc.on 'data', (data)->
		console.log "DATA: #{sc.remoteAddress}: #{data}"
		sc.write "You said #{data}"
	sc.on 'close', (data)->
		console.log "CLOSED: #{sc.remoteAddress}: #{sc.remotePort}"

app.listen PORT, HOST, ->
	console.log "Server listening on #{HOST}:#{PORT}"
