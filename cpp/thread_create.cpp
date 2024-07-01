
#include <iostream>

#include <thread>


using namespace std;

void fun(int a, const char *b) {
    cout << a << ":" << b <<endl;
}
class A {
    public:
        int a; // 变量
        // 构造函数
        A(int a) {
            this->a = a;
        }
        
        // 仿函数
        void operator()(int b) {
            cout << a <<" " << b << endl;
        }
};


int main() {
    // fun();

    const char *str = "abc";
    
    // 普通函数
    // thread t(fun, 11, str);

    // 匿名函数
 	// thread t([str]{
	// 	cout << str << endl;
	// });

    // 仿函数
    // thread t(A(111),222);


    // 捕获,线程的异常
    // try {
    //     t.join();
    // } catch(exception err) {
    //     cout << err.what() << endl;
    // }



    t.join();
    getchar();
}

