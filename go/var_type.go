package main

import (
	"fmt"
	"reflect"
)

// 获取,变量的类型
func fun() {
	a := 10

	// // switch a.type {
	switch interface{}(a).(type) {
	case int:
		fmt.Println("int type")
	case string:
		fmt.Println("string type")
	default:
		fmt.Println("other")
	}
	// b := interface{}(a).(type) == int // 错误

	// fmt.Println(b)

	// b,ok := interface{}(a).(int)
	// fmt.Println(ok)

	// fmt.Println(a)
}
func fun1() {
	a := 20

	d := interface{}(29)

	// d= 30
	fmt.Println(d, fmt.Sprintf("%T", d))

	// b :=
	b := reflect.TypeOf(a)
	c := reflect.TypeOf(a).Kind()
	// fmt.Println(b == reflect)
	// fmt.Println(c)
	fmt.Println(b, fmt.Sprintf("%T", b))
	fmt.Println(c, fmt.Sprintf("%T", c))
	// fmt.Printf("%T", c)

	// d := b.PkgPath()
	// d := b.NumField()

	// fmt.Println(d)

	// switch reflect.TypeOf(a).Kind() {
	// case reflect.Int:
	// 	fmt.Println("int type")
	// case reflect.String:
	// 	fmt.Println("string type")
	// default:
	// 	fmt.Println("other")
	// }

}

// fmt.Println(b)

func main() {
	// fun()
	fun1()

	fmt.Println("")
}
