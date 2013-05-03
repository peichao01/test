package main

import "fmt"

func myFunc (args ...int){
	for _, v := range args{
		fmt.Printf("%d ", v)
	}
	fmt.Println()
}

func myFunc2 (args ...int){
	myFunc(args...)
	myFunc(args[0:3]...)
}

func main() {
	myFunc(1,2,3,4,5)

	myArray := []int{6,7,8}
	mySlice1 := myArray[1:3]
	mySlice2 := make([]int, 5)
	mySlice3 := []int{21,22,23}

	fmt.Printf("%s:  ", "myArray")
	myFunc(myArray...)
	fmt.Printf("%s:  ", "mySlice1")
	myFunc(mySlice1...)
	fmt.Printf("%s:  ", "mySlice2")
	myFunc(mySlice2...)
	fmt.Printf("%s:  ", "mySlice3")
	myFunc(mySlice3...)
	fmt.Printf("%s:  ", "custome:")
	myFunc2(11,12,13,14)
}
