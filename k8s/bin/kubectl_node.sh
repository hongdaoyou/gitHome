#!/bin/bash

# set -x
# 查看,节点的信息
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local name=$1

    local s1=$(kubectl get nodes)
    if [ -n "$name" ];then
        echo "$s1" | grep $name
    else
        echo "$s1"
    fi

}


fun "$@"

