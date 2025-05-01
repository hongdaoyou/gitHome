#!/bin/bash

# set -x
# 比较.两个文件
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file1=$1
    local file2=$2

    meld $file1 $file2

}


fun "$@"

