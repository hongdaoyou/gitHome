#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,文件名"; exit 1;
    fi
    local file=$1

    # minikube logs --file=logs.txt
    minikube logs --file=$file

}


fun "$@"

