#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local d1=${1:-.}

    local shFlag=$2

    # 去除,.sh
    local optSh;
    if [ $# -eq 2 ];then
        optStr=" | grep -v .sh"
    fi

    set -x
    local cmd="find $d1  -type f  -executable $optStr"

    eval $cmd
    # find d1  -type f  -executable | grep .sh
}


fun "$@"

