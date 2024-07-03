#include <iostream>

using namespace std;

// delete [] ,释放 数组指针的内存
class A {
    public:
        ~A() {
            cout << "destruct" << endl;
        }
};

class Test {
    public:
        void fun(){
            // A *p = new A[10];
            int *p = new int[10];

            // delete []p;
            delete p;

            // cout << "1" << endl;
        }

};

int main() {

    Test test;
    test.fun();

}
