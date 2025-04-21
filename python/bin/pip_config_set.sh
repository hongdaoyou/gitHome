#!/bin/bash

# set -x
# 设置,软件源
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local key=$1
    local value=$2


    pip config set $key $val

}


fun "$@"

