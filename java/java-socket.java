import java.io.*;
import java.net.*;

public class A {

    void fun() {
        try {
            ServerSocket sock = new ServerSocket(8888);

            Socket clientFd = sock.accept();

            System.out.println("one connect");

            // 读流
            InputStream input = clientFd.getInputStream();
            BufferedReader reader = new BufferedReader(new InputStreamReader(input));

            // 读取
            String recvStr = reader.readLine();

            String sendMsg = "I recv: " + recvStr;
            System.out.println(sendMsg);

            // // 写入
            // writer.write( sendMsg );
            // writer.flush();

            // output.write( sendMsg.getBytes());

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {

        A obj = new A();
        obj.fun();
        // System.out.println(1);

    }

}

public class B {

    void fun() {

        try {
            Socket clientFd = new Socket("localhost", 8888);

            // 读流
            InputStream input = clientFd.getInputStream();
            BufferedReader reader = new BufferedReader(new InputStreamReader(input));

            // 写流
            OutputStream output = clientFd.getOutputStream();
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(output));

            // 写
            String sendMsg = "I am client\n";
            writer.write(sendMsg);
            writer.flush();

            System.in.read();
            System.in.read();

            // 读
            // String recvStr = reader.readLine();

            // System.out.println(recvStr);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {

        B obj = new B();
        obj.fun();
        // System.out.println(1);

    }

}
