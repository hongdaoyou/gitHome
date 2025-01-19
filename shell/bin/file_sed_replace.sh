#!/bin/bash

# set -x
# 文字,全部替换
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    # echo "$1"

    local src=$1
    local dst=$2
    local file=$3
    local confirm=$4

    if [ -n "$confirm" ];then
        confirm=" -i "
    fi
    # set -x
    sed $confirm "s/$src/$dst/g " $file

}

# echo "$@"
fun "$@"

