#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local name=$1

    # kubectl delete deployment nginx-service
    kubectl delete pod $name

}


fun "$@"

