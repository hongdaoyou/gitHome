#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local file=${1:-api/*.api}

    goctl api go -api $file -dir . -style goZero

}

fun "$@"

