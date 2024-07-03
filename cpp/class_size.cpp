#include <iostream>

using namespace std;

// 类的大小

// 空类
class A { // 1
};

// 成员
// class A { // 12
//     public:
//         int a;
//         char b;
//         float c;
// };

一个成员变量
class A { // 2
    public:
        char b;
        char c;

        void fun() {
        }
};

// 虚函数
// class A { // 24
//     public:
//         int a;
//         char b;
//         float c;

//         virtual void fun() {
//         }
// };

// 虚函数的继承
// class B {
//     virtual void fun() {
//     }
// };
// class A:public B {
// };

// 虚函数的多重继承
class C {
    int a;
    virtual void fun() {
    }
};
class B : public C{
    int b;
    virtual void fun1() {
    }
};
class A:public B {
    virtual void fun2() {
    }
};

class Test {
    public:
        void fun(){
            int len;
            // A *p = new A();

            len = sizeof(A); 

            cout << len << endl;
        }

};

int main() {

    Test test;
    test.fun();
}
