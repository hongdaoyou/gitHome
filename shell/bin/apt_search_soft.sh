#!/bin/bash

# set -x
# 搜索软件
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local name=$1


    apt search $name
}


fun "$@"

