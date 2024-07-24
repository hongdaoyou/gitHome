package main

import (
	"fmt"

)

// 接口
type i1 interface {
	fun()
} 

type i2 interface {
	fun();
} 

// 结构体
type T1 struct  {
}

func (a *T1)fun() {
	fmt.Println("fun")
}

func fun() {
	
	// (&T1{}).fun();

	var a i1 = &T1{}; // 结构体变量指针, 赋值给,接口变量
	a.fun();

	var b i2 = a;  // 相同类型的接口
	b.fun();

	// fmt.Println(arr)
}

func main() {
	fun()
	
	fmt.Printf("")
}

