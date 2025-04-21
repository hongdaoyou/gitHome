#!/bin/bash

# set -x
# 设置,软件源
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

}


fun "$@"

