#include <iostream>

#include <thread>
#include <exception>

#include <mutex>

using namespace std;

void fun(int &a, mutex &lock) {
    cout << this_thread::get_id() << endl;

    // 上锁
    lock.lock();
    cout << ++a <<endl;
    
    // 解锁
    lock.unlock();
}


int main() {

    const char *str = "abc";
    
    int a = 20;
    
    // 创建,锁对象
    mutex lock;
    
    // 线程的个数
    int size = 1;
    
    // 创建,线程数组
    thread thArr[size];
	
	// 执行,线程函数
    for (int i=0; i < size; i++) {
        thArr[i] = thread(fun, ref(a), ref(lock));
    }
    // this_thread::sleep_for(3);
    this_thread::sleep_for(chrono::seconds(3) );

    cout << "I wake up" << endl;

    // 等待
    for (int i=0; i < size; i++) {
        thArr[i].join();
    }


    getchar();
}

