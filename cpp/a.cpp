#include <iostream>
#include <memory>

using namespace std;



// 调试类
class Test {
    shared_ptr<int> sp1;
    public:
        void fun(){
            sp1 = make_shared<int>(10);

            *sp1 = 10;
            cout << *sp1 << endl;
        }
    
};



int main() {
	
	// 调试
    Test test;
    test.fun();

}
