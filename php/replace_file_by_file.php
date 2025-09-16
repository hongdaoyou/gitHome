<?php

// 将一个文件的每一行, 在一个另一个文件中,进行替换

class Test {

    public function fun() {
        
        // $file1 = '/home/hdy/test/shell/tt11';
        // $file2 = '/home/hdy/data/note/0-wen/0-tmp/tmp3';

        $this->replace_braced_keywords_with_eg($file1, $file2);

    } 

    function replace_braced_keywords_with_eg(string $file1, string $file2) {
        // 读取 file1 中的关键词
        $keywords = file($file1, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
        if ($keywords === false) {
            throw new RuntimeException("无法读取文件 $file1");
        }

        // 构造正则数组
        $patterns = [];
        foreach ($keywords as $word) {
            $word = trim($word);
            $word = substr($word, 0, -1);
            // echo $word."\n";

            $word = preg_quote($word, '/'); // 安全处理正则特殊字符
            $patterns["/($word)\}/"] = function ($matches) {
                return $matches[1] . '-> eg }';
            };
        }

        // 读取 file2 内容
        $content = file_get_contents($file2);
        if ($content === false) {
            throw new RuntimeException("无法读取文件 $file2");
        }
        
        // 替换内容
        $s1 = preg_replace_callback_array($patterns, $content);
        
        // var_dump($patterns);

        // var_dump($s1);
        file_put_contents($file2, $s1);
    }

}

(new Test())->fun();

