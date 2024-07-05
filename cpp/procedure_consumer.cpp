#include <iostream>

#include <mutex>
#include <condition_variable>
#include <thread>
#include <queue>


using namespace std;

// 调试类
class Test {
    public:
        mutex mtx;
        condition_variable cond;
        queue<int> q;
        int maxSize = 5; 

        void consumer(){
            while (true) {
                {
                    unique_lock<mutex> lock(mtx);
                    cout << "consumer wait" << endl;

                    while (q.empty()) {
                        // 等待
                        cond.wait(lock, [&]{
                            return !q.empty();
                        });
                    }
                    int val = q.front();
                    q.pop();

                    cout << "I consumer:  " << val << endl << endl;
                    this_thread::sleep_for(chrono::milliseconds(500) );

                }
                cond.notify_all();
            }

            cout << 1 << endl;
        }

        void proceduce() {
            int i = 0;
            while(true) {                
                {
                    unique_lock<mutex> lock(mtx);
                    cout << "proceduer wait" << endl;
                    
                    // 满了,就等待
                    while (q.size() >= maxSize) {
                        cond.wait(lock, [&] {
                            return q.size() < maxSize;
                        });
                    } 
                    q.push(++i);

                    cout << "I proceduce " << i << endl << endl;
                    this_thread::sleep_for(chrono::milliseconds(1000) );

                }
                cond.notify_all();
            }

        }

};

int main() {
	// 调试
    Test test;
    
    /* 
    thread t1(&Test::consumer, &test);
    thread t2(&Test::proceduce, &test);
    t1.join();
    t2.join();
     */
    
    int proceduceSize = 4;
    int consumerSize = 8;

    // 创建
    thread producerArr[proceduceSize ];
    thread consumerArr[consumerSize ];

    int i=0;
    // 创建,线程
    for (i=0; i < proceduceSize; i++) {
        producerArr[i] = thread(&Test::consumer, &test);
    }

    for (i=0; i < consumerSize; i++) {
        consumerArr[i] = thread(&Test::proceduce, &test);
    }

    // 等待
    for (i=0; i < proceduceSize; i++) {
        producerArr[i].join();
    }
    
    for (i=0; i < consumerSize; i++) {
        consumerArr[i].join();
    }

}
