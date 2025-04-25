#!/bin/bash

# set -x
# 字符串,转换成,大写
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    echo $s | tr -t "a-z" "A-Z"
}


fun "$@"

