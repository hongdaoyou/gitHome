<?php

const DEBUG_FLAG = true;

// 调试函数
function debug(...$a ) {
    if (! DEBUG_FLAG) return;

    foreach ($a as $val) {
        var_dump($val);
    }

}
