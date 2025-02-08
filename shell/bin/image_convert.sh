#!/bin/bash

# set -x
# 转换照片的格式
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local src=$1
    local dst=$2

    # convert a.jpg a.png
    convert $src $dst

}


fun "$@"

