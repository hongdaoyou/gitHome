package main

// 实现,多态

import (
	"fmt"
	"log"
	"os"
)

// 定义,一个接口
type I1 interface {
	fun()
}

// 定义,2个 struct.分别实现它
type A struct {
	a int
}
type B struct {
	a int
}

func (obj A) fun() {
	fmt.Printf("A.fun: %d\n", obj.a)
}
func (obj B) fun() {
	fmt.Printf("B.fun: %d\n", obj.a)
}

// 将该接口对象,作为,函数的参数,进行调用
func Print_a(obj I1) {
	obj.fun()
}
func main() {
	obj1 := A{a: 100}

	obj2 := B{a: 100}

	Print_a(obj1)
	Print_a(obj2)

	fmt.Printf("\n")
	log.Fatal("")
	os.Exit(0)
}
