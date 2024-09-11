#!/bin/bash

# set -x
# 重新开启,之前的容器
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local name=$1

    docker start $name

}


fun "$@"

