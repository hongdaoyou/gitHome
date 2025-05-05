package main

import (
	"fmt"
	"log"
	"os"
	"unicode/utf8"
)

func fun() {
	// time.Sleep(2 * time.Second)
	a1 := "1我是2"

	n1 := utf8.RuneCountInString(a1)
	fmt.Println(n1)

}

func main() {
	fun()

	fmt.Printf("")
	log.Fatal("")
	os.Exit(0)
}
