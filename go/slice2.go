package main

import "fmt"

func printSlice(slice []int){
	for _, v := range slice{
		fmt.Printf("%d ", v)
	}
	fmt.Println()
}

func main() {
	mySlice := make([]int, 5, 10)
	printSlice(mySlice)

	fmt.Println("len(mySlice):", len(mySlice))
	fmt.Println("cap(mySlice):", cap(mySlice))

	mySlice2 := append(mySlice, 1)
	printSlice(mySlice2)

	mySlice_tmp := []int{11,12,13}
	mySlice3 := append(mySlice2, mySlice_tmp...)
	printSlice(mySlice3)
}
