package main

import (
	"fmt"
	"log"
	"os"

	pb "d1/proto"
)

// 简单的 模仿,rpc

func handFunc1(req *pb.M1) *pb.M2 {
	ret := &pb.M2{M2: "返回的内容:" + req.GetM1()}

	return ret
}
func fun() {
	// time.Sleep(2 * time.Second)
	a1 := ""

	obj := &pb.M1{
		M1: "abc",
	}

	fmt.Println(obj.M1)

	ret := handFunc1(obj)
	fmt.Println(ret)

	fmt.Println(a1)

}

func main() {
	fun()

	fmt.Printf("")
	log.Fatal("")
	os.Exit(0)
}
