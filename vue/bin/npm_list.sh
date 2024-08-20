#!/bin/bash

# set -x
# 列出安装的软件 没弄好(全局参数的 位置)
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local soft=$1
    local globalFlag=$2


    if [ -n "$globalFlag" ];then
        globalFlag=" -g "
    fi

    local s1=$(npm list $soft $globalFlag)


  

}


fun "$@"

