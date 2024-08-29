#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local tag=$1
    local file=$2 # 默认当前目录

    if [ -n "$file" ];then
        file="-f $file"
    else
        # 当前目录
        file="."
    fi
    # set -x
    sudo docker build -t $tag  $file .

}


fun "$@"

