#!/bin/bash

# set -x
# 显示,文字的各种编码格式
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local file=$1

    # 字符编码的格式 : x, b, o
    local type=${2:-x} 

    hexdump -${type} $file
}


fun "$@"

