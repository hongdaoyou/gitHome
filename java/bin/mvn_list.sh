#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local name=$1

    local s1=$(mvn dependency:list)

    if [ -n "$name" ];then
        echo "$s1" | grep "$name"
    else
        echo "$s1";
    fi


}


fun "$@"

