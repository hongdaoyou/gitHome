#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local type=$1
    local name=$2

    # 查看,全部
    if [ $# -eq 1 ];then
        kubectl get ${type}s
    else
        kubectl get ${type} $name
    fi


}


fun "$@"

