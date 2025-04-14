<?php


class Test {
    // 按照,多个指定的格式,分割字符串
    public function fun() {

        $reArr = [
            " ",
            "\|",
            "\n",
        ];
        $reStr = "/" . implode("|", $reArr) . "/";

        $s1 = <<<EOF
abc def|a11
ss xx|11

EOF;

        $ret = preg_split($reStr, $s1 );

        
        var_dump($ret);
    } 
    
}

(new Test())->fun();

