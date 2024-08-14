#!/bin/bash

# set -x
# 根据数字,进行排序
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file=$1
    
    sort -n $file
}


fun "$@"

