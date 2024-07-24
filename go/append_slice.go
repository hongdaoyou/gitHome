package main

import (
	"fmt"

)

func fun() {
    // var a []int;

	// a.append(111);
	
	var a = make([]int,0);
	// var a = []int{};

	a=append(a, 111, 222);

	fmt.Println(a)
}

func main() {
	fun()
	
	fmt.Printf("")
}

