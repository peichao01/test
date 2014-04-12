val romanNumeral = Map(
	1->"I",
	2->"II",
	3->"III",
	4->"IV",
	5->"V"
)
println(romanNumeral(4))

val romanNumeral2 = Array(
	"I","II","III","IV","V"
)
println(romanNumeral2.apply(4-1))

val romanNumeral3 = List(
	"I","II","III","IV","V"
)
println(romanNumeral3.apply(4-1))

