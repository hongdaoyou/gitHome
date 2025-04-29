#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local src=$1
    local dst=$2


    ffmpeg -i $src $dst

}


fun "$@"

