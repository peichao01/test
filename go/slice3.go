package main

import "fmt"

func main(){
	type person struct {
		name string
		age uint
	}

	var slice []person = []person{person{"David", 24}}
	//slice := []person{person{"David", 24}}

	slice = append(slice, person{"John", 26})

	for _, v := range slice{
		fmt.Printf("name:%s, age:%d\n", v.name, v.age)
	}
}
