#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local name=$1
    # sudo docker images
    if [ -n "$name" ];then
        sudo docker images | grep "$name"
        
    else
        sudo docker images
    fi
}


fun "$@"

