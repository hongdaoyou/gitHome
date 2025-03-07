<?php


class Test {

    public function fun($str) {

        // $str = "";
        if ( $str == '') {
            echo "数据,未传入";
            return;
        }

        $encodeType = mb_detect_encoding($str, ["ASCII",'UTF-8','GB2312',"GBK"]);
        echo $encodeType . "<br>\n";

        $a = iconv($encodeType, 'utf-8',$str);
        echo "它的 utf8的 编码是: $a ";
        // var_dump($a);
    } 
    
}
$str = $argv[1] ?? '';
(new Test())->fun($str );

