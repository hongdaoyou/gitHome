#!/bin/bash

# set -x
# 分割文件
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    # 文件名
    local file=$1
    local num=$2
    # 前缀
    local prefix=$3


    split -d -l $num $file $prefix

}


fun "$@"

