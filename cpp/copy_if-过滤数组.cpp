#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

// 调试类
class Test {
    public:
        void fun(){
            // string a[] = {"abc", "abc1", "def"};  // 用这个定义,字符串数组. 就无法,用到, algorithm
        
            vector<string> a = {"abc", "abc1", "def", "ss,def"};


            vector<string> b;
            

            // 过滤,数组
            copy_if(a.begin(), a.end(), back_inserter(b), [](string item) {
                if (item.length() >=4 ) { 
                    return true;
                } else {
                    return false;
                }
            
            }  );

            // 打印,数组的内容
            for (auto it= b.begin(); it != b.end(); it++ ) {
                cout << *it << endl;
            }

            cout << 1 << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}
