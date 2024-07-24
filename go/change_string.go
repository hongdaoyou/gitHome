package main

import (
	"fmt"

)

func fun() {

	a := "abcde";

	// a[1]='B';
	// a = a[0:1] + "B" + a[2:];

	b := []byte(a)
	b := []rune(a)

	b[1] = 'B';
	a = string(b);
	
	fmt.Println(a)
}

func main() {
	fun()
	
	fmt.Printf("")
}

