#!/bin/bash

# set -x
# 查看,当前登录的用户,是谁
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    who
}


fun "$@"

