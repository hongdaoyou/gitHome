#!/bin/bash

# set -x
# 查看,图片的图形
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=${1}

    eog $file

}

fun "$@"

