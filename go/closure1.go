package main

import "fmt"

func main(){
	var j int = 5

	a:= func()(func()){
		var i int = 3
		return func(){
			fmt.Println("i:", i, "j:", j)
		}
	}()

	a()

	j += 5
	a()
}
