package main

import (
	"fmt"

)
type A struct {
	a int;
}

type B struct  {
	A
	c int;
}

func fun() {
	obj := B {}; // 栈变量

	obj := new(B); // 堆变量
	obj.a = 10;
	
	fmt.Println(obj.a)

}

func main() {
	fun()
	
	fmt.Printf("")
}

