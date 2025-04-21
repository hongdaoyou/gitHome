#!/bin/bash

# set -x
# 获取,软件源
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    pip config get global.index-url

}


fun "$@"

