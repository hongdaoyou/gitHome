package main

import (
	"fmt"
	"errors"

)

func main() {

	errorFun()
	
	fmt.Println("")
}

// 捕获,异常
func errorFun() {
	defer func (){ // 将函数,延迟执行
		// 捕获,错误
		if err := recover(); err != nil {
			fmt.Println("I recover: ", err)
		}

	}()

	a := 22
	if (a == 22) {
		// 创建,错误
		err := errors.New("Input Error 22")
		
		// 抛出错误
		panic(err);
		fmt.Println("111")
	}
}