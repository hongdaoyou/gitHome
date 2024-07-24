package main

import (
	"fmt"

)
func init() {
	fmt.Println(111);
}
func init() {
	fmt.Println(22);
}
func fun() {

	// func() {
	// 	fmt.Println("1111")
	// }();

	fmt.Println("fun")
}

func main() {
	fun()
	
	fmt.Printf("")
}

