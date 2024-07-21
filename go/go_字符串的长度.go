package main

import (
	"fmt"

	"unsafe"
)

func fun() {
	// a := "abc333333333333333333"
	a1 :=11
	a := &a1

	b:=unsafe.Sizeof(a)
	fmt.Println(a, b )
}

func main() {
	fun()
	
	fmt.Println("")
}

