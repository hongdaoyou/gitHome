#!/bin/bash

# set -x
# 列出安装的软件 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local soft=$1


    local s1=$(npm list -g)

    if [ -n "$soft" ];then
        echo "$s1" | grep "$soft"
    else
        echo "$s1"
    fi

}


fun "$@"

