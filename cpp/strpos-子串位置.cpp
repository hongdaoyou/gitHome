#include <iostream>

using namespace std;

// 调试类
class Test {
    public:
        void fun(){
            string s1 = "abcdef";
            string deli = "cde1";

            int a = s1.find(deli); // 不存在,返回 -1

            cout << a << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}
