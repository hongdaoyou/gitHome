<?php

/*
正则提取,某个文件的数据

1 调用
    https://localhost/gitHome/php/get_re_info.php
    php $gitHome/php/get_re_info.php

*/

class Test {
    public $fileName = "/home/hdy/data/note/0-wen/0-tmp/tmp4";
    // public $fileName = "";

    
    public function fun() {
        // 正则字符串
        $reStr = "/(\n[^{}\n]{1,}\?\s\n)/";
        // $reStr = "/\#{6} --(.*)\n```\n{1,}```/";

        if ($reStr == "//") {
            echo "正则字符串,为空\n";
            return;
        }
        if (!file_exists($this->fileName)) {
            echo "文件不存在\n";
            return;
        }

        $text = file_get_contents($this->fileName);
        
        // 正则,匹配--输出,自己想要的内容
        $ret = preg_match_all($reStr, $text, $matchArr);
        // var_dump($matchArr);
        
        // 处理,第一个分组
        foreach ($matchArr[1] as $item) {
            $str = $item;
            echo $str;
            // echo $str . "-today-<br>";
        }

        // echo 1;
    } 

    public function fun1() {
        // 正则字符串

        $reArr = [
            "\{\s*?\{",
            "\}\s*?\|\s*?\{",
            "\}\s*?\}\s+\?+\s*\n",
            "\n",
            "\]\s*?\|\s*?\{",
            "\}\s*?\|\s*?\["
        ];
        $reStr = "/" . implode("|", $reArr) . "/";

        if ($reStr == "//") {
            echo "正则字符串,为空\n";
            return;
        }
        if (!file_exists($this->fileName)) {
            echo "文件不存在\n";
            return;
        }

        $text = file_get_contents($this->fileName);
        // var_dump($text);

        // 正则,匹配--输出,自己想要的内容
        $ret = preg_split($reStr, $text);
        // echo count($ret);
        // var_dump($ret);
        foreach ($ret as $val) {
            if ( strpos( $val, "->") !== false && $val[0] == ' ' ) {
                var_dump(strpos( $val, "->") ) ."\n";
                echo $val . "\n\n";
                echo ">>>>>>\n\n$val\n\n";
            }
        }
   
        // echo 1;
    } 
}

$flag = $argv[1] ?? null;
if ($flag == 1) { 
    (new Test())->fun1();
} else {
    (new Test())->fun();
}

