###
 Module dependencies.
###

express = require 'express'
routes = require './routes'
user = require './routes/user'
test = require './routes/test'
http = require 'http'
path = require 'path'

app = express()

# all environments
app.set 'port', process.env.PORT or 3000
app.set 'views', "#{__dirname}/views"
app.set 'view engine', 'jade'
app.use express.favicon()
app.use express.logger 'dev'
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.cookieParser 'your secret here'
app.use express.session()
app.use app.router
app.use require('less-middleware')({ src: __dirname + '/public' })
app.use express.static path.join(__dirname, 'public')

#development only
if 'development' is app.get 'env'
  app.use express.errorHandler()

app.get '/', routes.index
app.get '/user', user.list
app.get '/a', (req, res)->
	#console.log "haha, #{req.url}"
	res.send "shit!!!"
app.get '/test', test

http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port #{app.get 'port'}"
