#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1

    python3 $gitHome/python/sin_image.py
}


fun "$@"

