<?php


function debug(...$a ) {

    foreach ($a as $val) {
        var_dump($val);
    }

}

debug(11, "abc", [11,22],222);
