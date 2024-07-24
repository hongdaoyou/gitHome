package main

import (
	"fmt"

	"sync/atomic"
)

func fun() {
	// a := 10;
	a := int32(10);

	atomic.AddInt32(&a, 10);
	
	fmt.Println(a)
}

func main() {
	fun()
	
	fmt.Printf("")
}

