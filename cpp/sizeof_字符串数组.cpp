#include <iostream>

using namespace std;

// 调试类
class Test {
    public:
        void fun(){
            char a[] = "ABCDEF"; 
            // char *c = "ABCDEF"; 

            char b[] = {'A', 'B', 'C', 'D', 'E', 'F'};

            cout << sizeof(a) << " " << sizeof(b) << endl;
            cout << 1 << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}
