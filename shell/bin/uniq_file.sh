#!/bin/bash

# set -x
# 文件,去重. 并且排序
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local file=$1

    sort $file | uniq | sort -n

}


fun "$@"

