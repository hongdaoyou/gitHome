#include <iostream>
// #include "a.h"
extern "C" {
#include "a.h"
}

using namespace std;

// 调试类
class Test {
    public:
        void fun(){
        
            cout << 1 << endl;
        }
    
};

int main() {
	fun();

	// 调试
    Test test;
    test.fun();

}
