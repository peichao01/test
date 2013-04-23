extend = require('./util').extend
util = require 'util'
EventEmitter = require('events').EventEmitter
WebSocketRequest = require './WebSocketRequest'
Constants = require './Constants'

class WebSocketServer extends EventEmitter
	constructor: (config)->
		@_handlers = 
			upgrade: this.handleUpgrade.bind this
			requestAccepted: this.handleRequestAccepted.bind this
		@connections = []
		if config
			this.mount config

	mount: (config)->
		@config = extend
			httpServer: null
			maxReceivedFrameSize: 0x10000
			maxReceivedMessageSize: 0x10000
			fragmentOutgoingMessages: true
			fragmentationThreshold: 0x4000
			keepalive: true
			keepaliveInterval: 20000
			dropConnectionOnKeepaliveTimeout: true,
			keepaliveGracePeriod: 10000
			useNativeKeepalive: false
			assembleFragments: true
			autoAcceptConnections: false
			disableNagleAlgorithm: true
			closeTimeout: 5000
			,
			config

		if @config.httpServer
			@config.httpServer.on 'upgrade', @_handlers.upgrade
		else
			throw new Error 'You must specify an httpServer on which to mount the WebSocket server'
	unmount: ->
		@config.httpServer.removeListener 'upgrade', @_handlers.upgrade
	closeAllConnections: ->
		@connections.forEach (connection)->
			connection.close()
	broadcast: (data)->
		if Buffer.isBuffer data
			@broadcastBytes data
		else
			@broadcastUTF data
	broadcastUTF: (utfData)->
		@connections.forEach (connection)->
			connection.sendUTF utfData
	broadcastBytes: (binaryData)->
		@connections.forEach (connection)->
			connection.sendBytes binaryData
	shutDown: ->
		@unmount()
		@closeAllConnections()
	handleUpgrade: (req, socket, head)->
		wsRequest = new WebSocketRequest socket, req, @config
		try
			wsRequest.readHandshake()
		catch e
			wsRequest.reject e.httpCode||400, e.message, e.headers
			if Constants.DEBUG
				console.log "#{new Date()} WebSocket: Invalid handshake: #{e.message}"
			return
		wsRequest.once 'requestAccepted', @_handlers.requestAccepted
		if not @config.autoAcceptConnections and @listeners('request').length > 0
			this.emit 'request', wsRequest
		else if @config.autoAcceptConnections
			wsRequest.accept wsRequest.requestedProtocols[0], wsRequest.origin
		else
			wsRequest.reject 404, 'No handler is configured to accept the connection.'
	
	handleRequestAccepted: (connection)=>
		connection.once 'close', (closeReason, description)->
			@handleConnectionClose connection, closeReason, description
		@connection.push connection
		@emit 'connect', connect
	handleConnectionClose: (connect, closeReason, description)->
		index = this.connections.indexOf connection
		if index isnt -1
			@connections.splice index, 1
		@emit 'close', connection, closeReason, description

module.exports = WebSocketServer
