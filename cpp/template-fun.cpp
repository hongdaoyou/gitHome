#include <iostream>

using namespace std;

// 调试类
class Test {
    public:
        void fun(){
        
            cout << 1 << endl;
        }
    
};

// 打印,debug
template<typename T> void debug(T a) {
    cout << a << endl;
}

int main() {
    debug<int>(111);
    debug(111);

	// // 调试
    // Test test;
    // test.fun();

}
