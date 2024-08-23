#include <iostream>
#include "A1.pb.h"
using namespace std;


// 调试类
class Test {
    public:
        void fun(){
            
            A1 *obj = new A1();
            obj->set_a(222);

            int b = obj->a();

            cout << "A:" << b << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}
