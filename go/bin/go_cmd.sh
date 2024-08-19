#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local name=$1
    local cmd=$2

    local s1=$(go list)
    
    if [ $# -eq 0 ]; then
        echo "$s1"
    elif [ $# -eq 1 ]; then
        echo "$s1" | grep $name
    else
        go $cmd $name
    fi
}


fun "$@"

