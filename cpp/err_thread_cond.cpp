#include <iostream>

#include <thread>
#include <exception>

#include <mutex>
#include <condition_variable>

using namespace std;

void fun(int &a, condition_variable &cond) {
    // cout << this_thread::get_id() << endl;

    // 上锁
    cond.wait();
    cout << ++a <<endl;
    
    cond.notify_one();
}

int main() {

    const char *str = "abc";
    
    int a = 20;
    
    // 创建,锁对象
    mutex lock;
    
    condition_variable cond(3);

    // 线程的个数
    int size = 10;
    
    // 创建,线程数组
    thread thArr[size];
	
	// 执行,线程函数
    for (int i=0; i < size; i++) {
        thArr[i] = thread(fun, ref(a), ref(lock));
    }
    // this_thread::sleep_for(3);

    // 等待
    for (int i=0; i < size; i++) {
        thArr[i].join();
    }


    getchar();
}

