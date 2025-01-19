#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # local type=$1
    local className=$1

    # bee generate controller User
    bee generate controller $className
}


fun "$@"

