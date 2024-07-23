package main

import (
	"fmt"

)

func fun() {

	func() {
		fmt.Println("1111")
	}();

	fmt.Println("")
}

func main() {
	fun()
	
	fmt.Printf("")
}

