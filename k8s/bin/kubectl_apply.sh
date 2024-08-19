#!/bin/bash

# set -x
# 创建,部署,或服务
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local name=$1

    
    # kubectl apply -f d1.yaml
    kubectl apply -f $name


}


fun "$@"

