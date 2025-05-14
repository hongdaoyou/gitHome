<?php


class Test {

    public function fun() {
        // global $summaryOutputDir;

        $a = "123"; // int
        $a = "abc";
        $a = 12.34; // double
        echo gettype($a); // 输出: string


    }
}

(new Test())->fun();

