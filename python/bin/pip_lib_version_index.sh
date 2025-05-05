#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1

    # sudo pip index versions numpy
    sudo pip3 index versions $soft
}


fun "$@"

