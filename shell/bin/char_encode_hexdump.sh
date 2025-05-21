#!/bin/bash

# set -x
# 显示,文字的各种编码格式
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local s1="$@"

    # 单个字符的
    # echo -n "$s1" | hexdump -C

    # printf "%d\n" "'A"
    # echo -n aa | od


    echo -n "$s1" | hexdump -e '1/1 "%02x "' ; echo


    # local file=$1

    # # 字符编码的格式 : x, b, o
    # local type=${2:-x} 

    # hexdump -${type} $file
}


fun "$@"

