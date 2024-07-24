package main

import (
	"fmt"
)

func debug( args ... interface{}) {
	fmt.Print("debug: ");
	fmt.Println(args ...);
}
func fun() {

	debug(11, "222", "a11", 3);

	fmt.Println("")
}

func main() {
	fun()
	
	fmt.Printf("")
}

