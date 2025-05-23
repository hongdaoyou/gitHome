#include <iostream>
#include <memory>

using namespace std;

// 调试类
class Test {
    public:
        void fun(){
            // 定义,一个共享指针
            // shared_ptr<int> ptr1 = NULL;
            string s1 = "abc";
            string dst;

            int n = 4;
         
            dst.reserve(n * s1.length());
            // fill_n(dst, n, s1 );

            // 遍历,重复字符串
            // for (int i=0; i< n;i++) {
            //     dst += s1;
            // }
            
            for (int i=0; i< n;i++) {
                dst.append(s1);
            }

            // fill_n(back_inserter(dst), n, s1 ); // fill_n 只能填充,字符


            cout << dst << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}
