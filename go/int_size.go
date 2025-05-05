package main

import (
	"fmt"
	"unsafe"
)

func fun() {
	a := int64(0)

	b := 0

	fmt.Println(unsafe.Sizeof(a), unsafe.Sizeof(b))
}

func main() {
	fun()

	fmt.Printf("")
}
