<?php

/*
正则提取,某个文件的数据

1 调用
    https://localhost/gitHome/php/get_re_info.php


*/

class Test {
    public $fileName = "/home/hdy/data/note/0-wen/0-tmp/tmp4";
    // public $fileName = "";

    
    
    public function fun() {
        // 正则字符串
        $reStr = "//";
        $reStr = "/\#{6} --(.*)\n```\n{1,}```/";


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

            echo $str . "-today-<br>";
        }

        // echo 1;
    } 
    
}

(new Test())->fun();

