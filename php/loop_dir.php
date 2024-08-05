<?php


class Test {
    public function fun() {
        $path = '/var/www/html';
        
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
                
                echo 'File: ' . $file . "<br>\n";
                continue;
            
            } else {
                // 目录

                echo 'Dir: ' . $file . "<br>\n";
                $this->loop_dir($file, $level );
            }
        }
    } // end of loop_dir
}

(new Test())->fun();

