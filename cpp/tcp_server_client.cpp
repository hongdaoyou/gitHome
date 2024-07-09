#include <iostream>
#include <asio.hpp>

using namespace std;

using namespace asio;
// using namespace ip::tcp;
using ip::tcp;

#define SERVER_PORT 6666

// 调试类
class Test {
    public:
        void fun(){
            // 创建,io上下文 
            asio::io_context context;

            // 创建端点 
            // endpoint ep("*", 666);
            tcp::endpoint ep(ip::address::from_string("127.0.0.1"), SERVER_PORT);

            // 创建,服务器套接字 
            // socket ss;
            tcp::acceptor ss(context, ep);

            // 绑定,端点. 监听
            // ss.bind(ep )

            // 创建,客户端的套接字 
            // socket_client cs;
            tcp::socket cs(context);

            cout << "server: wait" << endl;
            // 接受,客户端的到来 
            ss.accept(cs );
            cout << "server: one conect" << endl;

            // 创建,异步的缓存区 
            asio::streambuf recvBuf;

            cout << "server: read" << endl;

            // 从客户端,读取数据.放入,异步缓存区 
            // cs.read(recvBuf);
            asio::read_until(cs, recvBuf, "\n");

            cout << "server: read success" << endl;

            // 从异步缓存区,读取一行 
            iostream ios(&recvBuf);
            
            string data;
            std::getline(ios, data);
            cout << "server recv: " << data << endl;

            // 向客户端,发送数据 
            // cs.write("abc")
            asio::write(cs, asio::buffer("abc\n111"));
            cout << "server succes: " << data << endl;

            cout << 1 << endl;
        }
    
};

int main() {
	
	// 调试
    Test test;
    test.fun();

}



// 调试类
class ClientTest {
    public:
        void fun(){
            asio::io_context context;

            // 创建,客户端,套接字 
            // socker_client ss;
            // asio::socket ss(context);
            tcp::socket ss(context);

            // 创建端点
            // tcp::endpoint ep(tcp::v4(), SERVER_PORT);
            tcp::endpoint ep(ip::address::from_string("127.0.0.1"), SERVER_PORT);

            cout << "client: connect" << endl;

            // 客户端,连接服务器 
            // ss.conect(context, ep);
            ss.connect(ep);
            cout << "client: connect succes" << endl;

            cout << "client: write" << endl;
            // 发送数据 
            asio::write( ss, asio::buffer("abc\n111"));
            cout << "client: write succes" << endl;


            cout << "client: read" << endl;

            asio::streambuf recvBuf;
            
            // 然后,从读取数据.
            asio::read_until(ss, recvBuf, "\n");
            cout << "client: read succes" << endl;

            // 读取,一行 
            iostream ios(&recvBuf);
            string data;
            std::getline(ios, data);

            cout << "client:" << data << endl;

            cout << 1 << endl;
        }
    
};