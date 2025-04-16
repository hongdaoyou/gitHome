#!/bin/bash

# set -x
# 查看,具体的版本
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local soft=$1

    apt show $soft

}


fun "$@"

