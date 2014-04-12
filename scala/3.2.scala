var numNames = Array("zero","one","two")

var numNams2 = Array.apply("zero","one","two")

var numArr = new Array[String](3)
numArr(0) = "zero"
numArr.update(1, "one")
numArr.update(2, "two")

for(i <- 0 to numNames.length - 1){
	if(i == 0)
		Console print(numNames apply i)
	else
		Console print numNames(i)
	Console print " "
}

println("")

for(i <- 0 to numNams2.length){
	
}
