<?php

// 根据,一组数据的信息,生成,通用的格式化数据 --之后,再往里面,添加特定数据,即可 
    //  先定义数组, 再遍历数组,拼接字符串,即可  

class Test {
    private $data = [

        
    ];

    // 根据,一组数据的信息,生成,通用的格式化数据
    public function create_text_by_arr() {
        $str = '';
        $s1 = '';

        // 遍历数组
        foreach ($this->data as $val) {
        
            $str .=$s1;
        }
        
        echo $str;
    } 
    
}

(new Test())->create_text_by_arr();

