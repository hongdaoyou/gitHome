#include <iostream>
#include <memory>

using namespace std;

// 调试类
class Test {
    public:
        void fun(){
            // 定义,一个共享指针
            // shared_ptr<int> ptr1 = NULL;
            shared_ptr<int> ptr1 = make_shared<int>(10);

            shared_ptr<int> ptr2 = ptr1;

            cout << ptr1.use_count() << endl;


            unique_ptr<int> ptr3 = make_unique<int>(20);

            cout << 1 << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}
