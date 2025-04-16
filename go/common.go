package main

const DEUBG_FLAG = true;

// 打印,debug
func debug( args ... interface{}) {
	if ! DEUBG_FLAG {
		return;
	}

	fmt.Print("debug: ");
	fmt.Println(args ...);
}

