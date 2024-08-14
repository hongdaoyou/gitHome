#!/bin/bash

# set -x
# 显示,文件的第几行
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local first=$1
    local end=$2

    local file=$3

    if [ -n "$end" ];then
        optionStr=" ${first},${end}p"
    else
        optionStr=" ${first}p"
    fi

    sed -n $optionStr $file
}


fun "$@"

