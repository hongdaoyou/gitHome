#!/bin/bash

# set -x
# 创建,各种服务
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local name=${1}
    local port=$2

    # kubectl create service clusterip my-service --tcp=801:8080 --dry-run=client -o yaml > s1.yaml

    # kubectl create service clusterip $name --tcp=${port} --dry-run=client -o yaml > ${name}.yaml
    # kubectl create service nodeport $name --tcp=${port} --dry-run=client -o yaml > ${name}.yaml
    kubectl create service nodeport $name --tcp=${port} --dry-run=client -o yaml > ${name}-service.yaml

}


fun "$@"

