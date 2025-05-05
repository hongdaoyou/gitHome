package main

import "fmt"

const DEUBG_FLAG = true

// 打印,debug
func debug(args ...interface{}) {
	if !DEUBG_FLAG {
		return
	}

	fmt.Print("debug: ")
	fmt.Println(args...)
}

// 改变字符串的值
func str_modify_char(a string, num int, ch rune) string {
	// a := "abcde"

	// a[1]='B';
	// a = a[0:1] + "B" + a[2:];

	b := []rune(a)
	// b := []rune(a)

	b[num] = ch
	// b[1] = 'B'
	return string(b)

	// fmt.Println(a)
}
