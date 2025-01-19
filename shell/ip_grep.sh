#!/bin/bash

# set -x
# 进入,输入文件的目录
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s1=$(cat)

    echo "$s1" | grep -oP '\b(?:\d{1,3}\.){3}\d{1,3}\b' 
}


fun "$@"

