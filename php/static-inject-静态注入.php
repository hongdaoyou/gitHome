<?php


class Test {
    public $a;

    // 获取,静态变量. 当前对象
    public static $static_obj;

    // 设置,静态变量
    public static function set_obj($obj) {
        self::$static_obj=$obj;
    }

    public function __construct($a) {
        $this->a = $a;
        self::set_obj($this);
        // echo 'aa';
    }
    public function fun() {
        // global $summaryOutputDir;

    }
}

// (new Test())->fun();

$obj = new Test("aaa");
var_dump($obj->a);

// echo (Test::$static_obj)->$a;  // 不是用$a, 而是 ->a
$obj2 = Test::$static_obj;
var_dump($obj2->a );



