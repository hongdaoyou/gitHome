#!/bin/bash

# set -x
# 创建,ingress
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local path=$1
    local service=$1

    # kubectl create ingress my-ingress --rule='localhost/a1/b1=nginx1:80' 

    kubectl create ingress my-ingress --rule="$path=$service" 

}


fun "$@"

