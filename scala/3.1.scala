var greetingStrings = new Array[String](3)

greetingStrings(0) = "Hello"
greetingStrings(1) = ","
greetingStrings(2) = "world!\n"

for(i <- 0 to 2)
	print(greetingStrings(i))

Console println ""

for(i <- (0).to(2))
	print(greetingStrings(i))


Console println 1 + 2
Console println (1).+(2)
