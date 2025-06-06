package main

import (
	"fmt"
	"log"
	"os"
)

func fun() {
	// time.Sleep(2 * time.Second)
	a1 := ""

	req := &M1{
		M1: "abc",
	}
	fmt.Println(req.M1)

	fmt.Println(a1)

}

func main() {
	fun()

	fmt.Printf("")
	log.Fatal("")
	os.Exit(0)
}
