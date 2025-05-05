package main

import (
	"fmt"
	"unsafe"
)

func fun() {
	a := "abc333333333333333333"
	// a1 := 11
	// a = &a1

	// n1 := len(a)
	n1 := unsafe.Sizeof(a)

	fmt.Println(n1)
	// b := unsafe.Sizeof(a)
	// fmt.Println(a, b, n1)
}

func main() {
	fun()

	fmt.Println("")
}
