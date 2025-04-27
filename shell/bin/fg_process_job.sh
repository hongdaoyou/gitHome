#!/bin/bash


# jobs -l 无法,在脚本中,执行
# set -x
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local num=$1
    jobs -l

    if [ -n "$1" ]; then   
        fg %${num}

    fi
}


fun "$@"

