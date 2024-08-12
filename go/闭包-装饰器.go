package main

import (
	"fmt"

)
func fun1( )  {
	fmt.Println("fun1");
}
// 定义,一个装饰器
func fun(fn func() ) func() {

	return func() {
		// 额外的操作
		fmt.Println("start")
		fn();
		
		fmt.Println("end")

	};
}

func main() {
	f := fun(fun1 )

	f();

	fmt.Printf("")
}

