#!/bin/bash

# set -x
# 查看,文件的大小
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=$1

    if [ ! -f $file ];then
        echo "文件不存在"; exit 1;
    fi

    du -sh $file
}

fun "$@"

