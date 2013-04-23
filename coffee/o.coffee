tag = "<impossible>"
[open, contents..., close] = tag.split ""

console.log contents

class Person
	constructor: (options) ->
		{@name, @age, @height} = options

person = new Person({
	name: "David"
	age: 24,
	height: 180
})

console.log person
