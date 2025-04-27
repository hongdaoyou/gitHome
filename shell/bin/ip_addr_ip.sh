#!/bin/bash

# set -x
# 查看,ip地址
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1

    # ip addr | grep "inet "
    ip addr | grep "inet " | grep -v  -P ' lo|docker' 
}


fun "$@"

