Deprecation = 
	disableWarnings: false
	deprecationWarningMap: 
		websocketVersion: "The websocketVersion property will be removed in a future version of WebSocket-Node.  It was renamed to webSocketVersion for naming consistency."
		websocketVersionConfig: "The websocketVersion config value will be removed in a future version of WebSocket-Node.  It was renamed to webSocketVersion for naming consistency."
	warn: (deprecationName)->
		if isnt @disableWarning and @deprecationWarningMap[deprecationName]
			console.warn "DEPRECATION WARNING: #{@deprecationWarningMap[deprecationName]}"
		@deprecationWarningMap[deprecationName] = false

module.exports = Deprecation
