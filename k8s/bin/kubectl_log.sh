#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    # 容器
    local pod=$1

    # 命名空间
    # local ns=${2:-kube-system}
    local ns=${2:-default}


    # kubectl logs --namespace=kubernetes-dashboard kubernetes-dashboard-779776cb65-wctlm

    # kubectl logs --namespace=$ns $pod
    # kubectl logs $pod


}


fun "$@"

