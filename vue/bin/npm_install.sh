#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local soft=$1
    local globalFlag=$2

    if [ -n "$globalFlag" ];then
        globalFlag=" -g "
    fi

    npm install $soft $globalFlag

}


fun "$@"

