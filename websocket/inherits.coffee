util = require 'util'
events = require 'events'

MyStream = ->
	#events.EventEmitter.call this

util.inherits MyStream, events.EventEmitter

MyStream.prototype.write = (data)->
	this.emit 'data', data

stream = new MyStream()

console.log stream instanceof events.EventEmitter
console.log MyStream.super_ is events.EventEmitter

stream.on 'data', (data)->
	console.log "Received data: #{data}"
stream.write "It works!"
