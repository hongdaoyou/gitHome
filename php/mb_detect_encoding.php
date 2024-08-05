<?php


class Test {

    public function fun() {

        $str = "";

        $encodeType = mb_detect_encoding($str, ["ASCII",'UTF-8','GB2312',"GBK"]);

        $a = iconv($encodeType, 'utf-8',$str);

        var_dump($a);
    } 
    
}

(new Test())->fun();

