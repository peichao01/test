package main

import "fmt"

func main(){
	mySlice1 := make([]int, 5)
	//mySlice2 := make([]int, 5, 10)
	mySlice3 := []int{1,2,3,4,5}

	fmt.Print("mySlice1: ")
	for i:=0; i<len(mySlice1); i++{
		fmt.Printf("%d ", mySlice1[i])
	}

	fmt.Print("\nmySlice3: ")
	for _, v := range mySlice3 {
		fmt.Printf("%d ", v)
	}
	fmt.Println()
}
