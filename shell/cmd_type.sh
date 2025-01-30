#!/bin/bash

# set -x
# 查看,某个函数的 内容
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local s=$1
    
    type $s
}


fun "$@"

