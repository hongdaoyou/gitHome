#include <iostream>
#include <atomic>
#include <thread>

using namespace std;

// 调试类
class Test {
    public:
        Test(int a):a(a) {

        }
        atomic<int> a;

        void fun(){
            for (int i=0; i < 10; i++) {
                // a++;
                a = a + 10;
                cout << a << endl;
            }
        }
};

int main() {

	// 调试
    Test test(10);
    thread t1(&Test::fun, &test );
    thread t2(&Test::fun, &test );

    t1.join();
    t2.join();

    // cout  << test.a.load() << endl;
}
