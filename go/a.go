package main

import (
    "fmt"
    "os"
    // "log"

    "reflect"
)

func fun() {
    // time.Sleep(2 * time.Second)
    a1 := "11"

    t := reflect.TypeOf(a1).String()

    
    
    fmt.Println(t)

}

func main() {
    fun()

    fmt.Printf("")
    // log.Fatal("")
    os.Exit(0)
}

