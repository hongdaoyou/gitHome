package main

import (
	"fmt"
	"log"
	"os"
)

func fun() {
	// time.Sleep(2 * time.Second)
	a1 := ""
	// select {
	// case <-time.After(2 * time.Second):
	// 	fmt.Println("abc")
	// }

	// time.Tick
	// select {
	// case <-time.Tick(2 * time.Second):
	// 	fmt.Println("abc")
	// }

	// time.NewTimer
	// timer := time.NewTimer(2 * time.Second)

	// select {
	// case <-timer.C:
	// 	fmt.Println("abc")
	// }

	// <-timer.C

	// <-time.Tick(2 * time.Second)

	// <-time.After(2 * time.Second)

	fmt.Println("abc")

	fmt.Println(a1)

}

func main() {
	fun()

	fmt.Printf("")
	log.Fatal("")
	os.Exit(0)
}
