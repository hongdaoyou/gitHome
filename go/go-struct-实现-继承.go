package main

import (
	"fmt"
	"log"
	"os"
)

type A struct {
	a int
}
type B struct {
	A // 嵌入继承
	b int
}

func (obj A) fun() {
	fmt.Printf("A.fun: %d", obj.a)
}

func main() {
	// fun()
	// obj := A{a: 100}
	// obj.fun()

	// obj := B{A: A{a: 100}, b: 200} // 直接
	// obj := B{a: 100, b: 200} // 不能这样写
	obj := new(B) // new
	obj.a = 100
	obj.b = 200

	obj.fun()

	fmt.Printf("\n")
	log.Fatal("")
	os.Exit(0)
}
