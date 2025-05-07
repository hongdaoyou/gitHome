<?php


class Test {

    # 扁平化,数组. [ 11, 22, [33, 44, 55], [6565,443], 22  . 
    public function fun() {
        // global $summaryOutputDir;

        $arr = [
            "11",
            "22",
            "/d1/UML",
            "33",
            "/d1/333",
        ];
            
        $brr = [];
        foreach ($arr as $key => $val) {
            if (is_dir($val)) {
                // $arr[$key] = scandir($val); 
                // echo 'aa';
                // $brr = array_merge($brr, array_diff(scandir($val), ['.', '..', '']));
                $brr = array_merge($brr, scandir($val) );
            
            } else {
                $brr[] = $val;
            }
        }
        // print_r($brr);
    }
}

(new Test())->fun();

