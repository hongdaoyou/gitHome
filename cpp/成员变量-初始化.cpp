#include <iostream>

using namespace std;

class A{
    public:
        int a;
        A(int a) {
            cout << "aa" << endl;
            this->a = a;
        }
};
class B{
    public:
        int a;
        B(int a) {
            cout << "bb" << endl;
            this->a = a;
        }
};

// 调试类
class Test {
    public:
        A a;
        B b;

        // 成员初始化的顺序: 按照,它定义的顺序
        Test(int a, int b): b(b),a(a) {
        
            cout << 1 << endl;
        }
    
};

int main() {
	
	// 调试
    Test test(11, 22);
    // test.fun();

}
