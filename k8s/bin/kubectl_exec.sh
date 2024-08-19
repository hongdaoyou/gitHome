#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local podName=$1
    local cmd=$2

    # kubectl exec -it podName -n nsName /bin/sh    #进入容器

    kubectl exec -it $podName $cmd    #进入容器

}


fun "$@"

