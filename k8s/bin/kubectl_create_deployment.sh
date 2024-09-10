#!/bin/bash

# set -x
# 创建,各种服务
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    
    local name=${1}
    local image=$2

    # kubectl create deployment $name --image=${image} --dry-run=client -o yaml > ${name}.yaml
    kubectl create deployment $name --image=${image} --dry-run=client -o yaml > ${name}-deployment.yaml

}


fun "$@"

