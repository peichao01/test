package main

import "fmt"
//import "strings"

type a struct{
	name string
}
func (o a)Hi(){
	fmt.Println("Hi from a.")
}

type b struct{
	a
	age int
}

func main(){
	v1 := a{"David"}

	var v2 a
	v2.name = "Tom"

	v3 := b{v1, 24}

	var v4 b
	v4.name = "John"
	v4.age = 20
	v4.Hi()

	fmt.Println(v1, v2, v3, v4)
}
