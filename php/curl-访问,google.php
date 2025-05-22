<?php


class Test {

    public function fun() {

        // $a = file_get_contents('https://www.google.com'); // 会被封掉
        
        $ch = curl_init();
        curl_setopt_array($ch, [
            CURLOPT_URL => 'https://www.google.com/ncr',
            CURLOPT_PROXY => '127.0.0.1:10801', // SOCKS5 代理
            CURLOPT_RETURNTRANSFER => true,
            
            CURLOPT_FOLLOWLOCATION => true, // 跟随重定向
            CURLOPT_MAXREDIRS => 5, //最大重定向次数（默认 20）


        ]);

    $ret = curl_exec($ch);
    curl_close($ch);
    var_dump($ret);

        // echo $a;
    } 
    
}

(new Test())->fun();

