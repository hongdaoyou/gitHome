<?php

// 对字符串的行,也进行分割, 然后,分开处理
class Test {
	// 项目的位置
    private $str = <<<EOF
111

2222


33

EOF;
    public function fun() {

        $arr = explode("\n", $this->str);

        foreach ($arr as $value) {
            if ($value == "") continue;

            // print($value);
        }

        echo "";
    } 
    
}

(new Test())->fun();

