<?php


class Test {

    public function fun() {
        $c = 30;
        $fun = function ($a=1, $b=2) use($c ) {
            echo $a . "\n";
            echo $b . "\n";
            echo $c . "\n";
        };
        $c = 4444;
        $fun(11, 22);
    } 
    
}

(new Test())->fun();

