package main

import (
	"fmt"
)

func main() {

	fun(11)
	fun("abc")
	fun(11.22)

}

func fun(a interface{}) {
	switch a.(type) {
	case int:
		fmt.Println("int:", a)
	case string:
		fmt.Println("string:", a)
	default:
		fmt.Println("not match")
	}
}