#!/bin/bash

# set -x
# 文字,全部替换
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local src=$1
    local dst=$2
    local file=$3

    sed  "s/$src/$dst/g " $file

}


fun "$@"

