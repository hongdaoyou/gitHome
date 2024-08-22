#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local type=$1
    local className=$2

    # bee generate controller User
    bee generate $type $className
}


fun "$@"

