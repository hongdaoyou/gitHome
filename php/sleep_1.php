<?php


class Test {

    public function fun() {
        $i = 0;
        while (true) {
            echo $i++ . "\n";
            
            sleep(2);
        }
        echo "";
    } 
    
}

(new Test())->fun();

