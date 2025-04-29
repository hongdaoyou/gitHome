#!/bin/bash

# set -x
# 查看,是否,有某个动态链接库
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local name=$1

    if [ $# -eq 0 ];then
        ldconfig -p
    else
        ldconfig -p | grep "$name"
    fi

}


fun "$@"

