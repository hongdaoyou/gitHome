#!/bin/bash

# set -x
# 显示,文字的各种编码格式
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local type=$1
    local file=$2

    hexdump -${type} $file
}


fun "$@"

