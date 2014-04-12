// 1. 指令式编程
def printArgs(args: Array[String]) = {
	var i = 0
	while(i<args.length){
		println(args(i))
		i += 1
	}
}

// 2. 函数式编程
def printArgs2(args: Array[String]): Unit = {
	for(arg <- args)
		println(arg)
}

// 2. functional
def printArgs3(args: Array[String]) = args.foreach(println)

// 3. 纯函数式编程，与函数沟通的唯一渠道就是输入的参数与函数返回值
// 并且不应该产生任何“副作用”
def formatArgs(args: Array[String]) = args.mkString("\n")

// 测试程序
def testFormatArgs(){
	var res = formatArgs(Array("zero","one","two"))
	assert(res == "zero\none\ntwo")
}


printArgs(args)
printArgs2(args)
printArgs3(args)
println(formatArgs(args))

testFormatArgs()
