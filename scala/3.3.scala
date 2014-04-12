val oneTwoThree = List(1,2,3)
val fourFive = List(4,5)
var oneToFive = oneTwoThree ::: fourFive
println("" + oneTwoThree + " and " + fourFive + " were not mutated.")
println("Thus," + oneToFive + " is a new List.")

val twoThree = List(2,3)
val oneTwoThree2 = 1 :: twoThree
println(oneTwoThree2)

val oneTwoThree3 = 1::2::3::Nil
println(oneTwoThree3)

List()
Nil
List("cool","tools","rule")
val thrill = "Will"::"fill"::"until"::Nil
List("a","b"):::List("c","d")
thrill(2)
thrill apply 2
thrill.count(s=>s.length == 4)
thrill.count((s:String)=>s.length==4)
thrill.drop(2)
thrill dropRight 2
thrill exists(s => s=="until")
thrill.filter(str=>str.length == 4)
thrill.forall(str=>str.endWith("l"))
thrill.foreach(str=>print(str))
thrill.foreach(print)
thrill.head
thrill.init
thrill.isEmpty
thrill.last
thrill.length
thrill.map(str=>str+"y")
thrill.mkString(", ")
thrill.remove(str => str.length == 4)
thrill.reverse
thrill.sort(
	(s, t)=>s.charAt(0).toLowerCase < t.charAt(0).toLowerCase
)
thrill.tail
