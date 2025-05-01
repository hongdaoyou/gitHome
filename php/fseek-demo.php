<?php


class Test {

    public function fun() {
        // global $summaryOutputDir;

        $fileName = "b.file";
        $fp = fopen($fileName, 'rb');

        $ret0 = ftell($fp);

        $size = filesize($fileName);


        // fseek($fp , 0, SEEK_SET); // 偏移到, EOF
        fseek($fp , -1, SEEK_END);  // 偏移到, \n
        // fseek($fp , -2, SEEK_END);  // 偏移到, 最后一个字符
        
        // fseek($fp , 1); // fseek, 默认的是, SEEK_SET
        // $ret2 = ftell($fp);
        
        $ch1 = fgetc($fp);
        $ch2 = fgetc($fp);
        
        $ret2 = ftell($fp);
        
    }
}

(new Test())->fun();

