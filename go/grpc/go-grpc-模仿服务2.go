package main

import (
	"context"
	"fmt"
	"log"
	"os"

	pb "d1/proto"
)

// 定义,自己的服务
type myService struct {
	pb.UnimplementedS1Server
}

// 自己,实现,服务
func (s *myService) Fun1(ctx context.Context, req *pb.M1) (*pb.M2, error) {
	ret := &pb.M2{M2: "返回的内容:" + req.GetM1()}

	return ret, nil
}

func fun() {
	// time.Sleep(2 * time.Second)
	a1 := ""

	req := &pb.M1{
		M1: "abc",
	}
	fmt.Println(req.M1)

	// 创建,服务实例
	sv := myService{}

	// 直接调用,服务的函数

	ret, _ := sv.Fun1(context.Background(), req)

	// ret := handFunc1(obj)
	fmt.Println(ret)

	fmt.Println(a1)

}

func main() {
	fun()

	fmt.Printf("")
	log.Fatal("")
	os.Exit(0)
}
