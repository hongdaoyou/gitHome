package main

import (
	"fmt"

)

func fun() func() {
	a := 10

	return func() {
		a++;
		fmt.Println(a)
	};
}

func main() {
	f := fun()
	
	f();
	f();

	fmt.Printf("")
}

