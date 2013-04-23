class Animal
	constructor:(@name)->
		@type='Animal'
	run:(speed=0)->
		alert "I'm #{@name}, i'm #{if @type.substr(0,1).toLowerCase() in ['a','e','i','o','u'] then 'an' else 'a'} #{@type}, and i'm running(very fast~~)."
		
class Snake extends Animal
	###
	arguments:
		name String
		length Number
		age Number
	###
	constructor:(options)->
		{@name, @length, @age} = options
		super @name
		@type='Snake'
	run:(speed=5)->
		super speed
		alert "my track are beatiful.
				my speed is #{speed}."

class Horse extends Animal
	constructor:(options)->
		{@name, @height, @age} = options
		super @name
		@type='Horse'
	run:(speed=45)->
		super speed
		alert "i'm more fase than Snake,
					my speed is #{speed}"

animal = new Animal "original D animal"
snake = new Snake name: "pretty snake", length: "180cm", age: 3
horse = new Horse name: "strong horse", height: "200cm", age: 6



#animalBtn = document.getElementById('animal')
button={}
for name in ['animal', 'snake', 'horse']
	button["#{name}"] = document.querySelector("##{name}>.run");#document.getElementById(name);
window.animalButtons = button

document.addEventListener 'DOMContentLoaded', ->
	document.querySelector('body').addEventListener 'click', (e)->
		parentDom = e.target.parentNode
		type = parentDom.getAttribute 'id'
		animal.run() if type is 'animal'
		snake.run() if type is 'snake'
		horse.run(58) if type is 'horse'
