<?php


class Test {
    public function fun() {
        // $path = '/var/www/html';

        $level = 5;
        $this->loop_dir($path ,$level);
        
        echo "";
    } 

    function loop_dir($path, $level ) {

        // level 限制
        if ($level == 0) {
            return;
        } elseif ($level > 0) {
            $level = $level -1;
        } else {
        }

        $dir = scandir($path);
        // var_dump($dir);
    
        // 遍历,目录
        foreach ($dir as $value) {
            if ($value == '.' || $value == '..' ) {
                continue;
            }

            // 文件的路径
            $file = $path . '/' .$value;
            if (! is_dir($file) ) {
                // 文件
                $s1 = file_get_contents($file);

                $reStr1 = "/豆瓣评分:(.+)\n/";
                $ret = preg_match($reStr1, $s1, $matchArr);
                if ($ret) {
                    // var_dump($matchArr[1]);
                    if ($matchArr[1] >= 8.5) {
                        echo "$value\n";
                    }
                }
                // echo 'File: ' . $file . "<br>\n";
                continue;
            
            } else {
                // 目录

                echo 'Dir: ' . $file . "<br>\n";
                $this->loop_dir($file, $level );
            }
        }
    } // end of loop_dir
    
    // 打开文件,匹配文件
    function  file() {
        $s1 = file_get_contents($file);

        $reStr1 = "/豆瓣评分:(.+)\n/";
        $ret = preg_match($reStr1, $s1, $matchArr);
        if ($ret) {
            // var_dump($matchArr[1]);
            if ($matchArr[1] >= 8) {
                echo "$value\n";
            }
        }
    }
}

(new Test())->fun();

