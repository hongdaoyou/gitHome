#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local d1=$1

    ls -l -t $d1
}


fun "$@"

