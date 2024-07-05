#include <iostream>
#include <queue>
#include <thread>
#include <mutex>
#include <condition_variable>

std::queue<int> queue;              // 用于存放数据的队列
std::mutex mtx;                     // 互斥锁，保护对队列的访问
std::condition_variable condVar;    // 条件变量，用于通知生产者和消费者

const int MaxItems = 10;            // 队列的最大容量
const int MaxProduced = 20;         // 生产者生产的最大数据量

void producer() {
    for (int i = 0; i < MaxProduced; ++i) {
        std::this_thread::sleep_for(std::chrono::milliseconds(500)); // 模拟生产过程
        {
            std::unique_lock<std::mutex> lock(mtx);
            if (queue.size() >= MaxItems) {
                std::cout << "Queue is full. Producer waits." << std::endl;
                condVar.wait(lock, []{ return queue.size() < MaxItems; });
            }
            queue.push(i);
            std::cout << "Produced: " << i << std::endl;
        }
        condVar.notify_all(); // 通知消费者，队列中有数据
    }
}

void consumer() {
    while (true) {
        std::this_thread::sleep_for(std::chrono::milliseconds(1000)); // 模拟消费过程
        {
            std::unique_lock<std::mutex> lock(mtx);
            if (queue.empty()) {
                std::cout << "Queue is empty. Consumer waits." << std::endl;
                condVar.wait(lock, []{ return !queue.empty(); });
            }
            int item = queue.front();
            queue.pop();
            std::cout << "Consumed: " << item << std::endl;
        }
        condVar.notify_all(); // 通知生产者，队列中有空间
    }
}

int main() {
    std::thread producerThread(producer);
    std::thread consumerThread(consumer);
    
    producerThread.join();
    consumerThread.join();

    return 0;
}

