#!/bin/bash

# set -x
# 创建标签, 查看标签
function fun() {
    # if [ $# -lt 2 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local tagName=$1
    local msg=$2

    # git tag -c "make tag" T1
    if [ $# -eq 0 ];then
        git tag -l
    elif [ $# -eq 1 ];then
        git tag | grep "$tagName"

    elif [ $# -eq 2 ];then
        git tag -m "$msg" $tagName

    fi
}


fun "$@"

