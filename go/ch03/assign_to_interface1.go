package main

import "fmt"

type Integer int

type LessAdder interface {
	Less(b Integer) bool
	Add(b Integer)
}

type Lesser interface {
	Less(b Integer) bool
}

func (a Integer) Less(b Integer) bool {
	return a < b
}

/*
func (a *Integer) Less(b Integer) bool {
	return (*a).Less(b)
}
*/

func (a *Integer) Add(b Integer) {
	*a += b
}

func main(){
	var a Integer = 1
	var b LessAdder = &a
}
