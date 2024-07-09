#include <iostream>
#include <asio.hpp>

using namespace std;

using namespace asio;

using ip::udp;

#define SERVER_PORT 6666


// 调试类
class Test {
    public:
        void fun(){
            asio::io_context context;

            // 创建,服务器的端点
            udp::endpoint ep(ip::address::from_string("127.0.0.1"), SERVER_PORT);

            // 创建,客户端的,udp套接字 
            udp::socket ss(context, asio::ip::udp::v4() );

            cout << "client: 发送" << endl;
            
            const std::string str= "2222";
            // 发送,udp数据
            ss.send_to(asio::buffer(str), ep);

            char recvData[1024];
            
            udp::endpoint recv_ep;

            // 接收数据
            int len = ss.receive_from(asio::buffer(recvData), recv_ep);
            cout << "client:" << recvData << endl;

            cout << 1 << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}
