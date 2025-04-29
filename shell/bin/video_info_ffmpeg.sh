#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local file=$1
    # local dst=$2

    ffmpeg -i $file

    # # ffmpeg -i demo.mp4
    # if [ $# -eq 1 ];then
    #     ffmpeg -i $file
    # elif [ $# -eq 2 ];then
    #     ffmpeg -i $file $dst

    # fi

}


fun "$@"

