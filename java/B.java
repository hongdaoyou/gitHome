import java.io.*;
import java.net.*;

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
