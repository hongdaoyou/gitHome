#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 0 ];then
        echo "请输入,参数"; exit 1;
    fi
    # local name=$1
    local name=$1

    # 查看,全部
    if [ $# -eq 0 ];then
        # kubectl get ${type}s
        kubectl get pods --all-namespaces
        
    else
        kubectl get pods $name
    fi


}


fun "$@"

