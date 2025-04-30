#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local s=$1
    
    php  $gitHome/php/char_detect_encoding_mb.php $s

}


fun "$@"

