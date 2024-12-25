<?php


class Test {

    public function fun() {

        var_dump(file_get_contents("/home/hdy/data/note/0-wen/0-tmp/tmp5") );
        // $ret = preg_match_all("/\{[^{}\[]*->[^{}\]]*\}/", file_get_contents("/home/hdy/data/note/0-wen/0-tmp/tmp5") , $matchArr );


        
        var_dump($matchArr);
    } 
    
}

(new Test())->fun();

