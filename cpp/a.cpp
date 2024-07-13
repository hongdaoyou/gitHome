#include <iostream>

using namespace std;



// 调试类
class Test {
    public:
        void fun(){
            debug(11, "abc");

            cout << 1 << endl;
        }
    
};



int main() {
	
	// 调试
    Test test;
    test.fun();

}
