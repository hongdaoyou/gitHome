package main

import (
	"fmt"
	"log"
	"os"
)

func fun[T string](a T) {
	// func fun(a interface{}) {

	// time.Sleep(2 * time.Second)

	fmt.Println(a)

}

func main() {
	fun("abc")
	// fun(11)

	fmt.Printf("")
	log.Fatal("")
	os.Exit(0)
}
