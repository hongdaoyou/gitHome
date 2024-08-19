#!/bin/bash

# set -x
# 快速运行,某个镜像
function fun() {
    if [ $# -lt 3 ];then
        echo "请输入,参数"; exit 1;
    fi

    local imageName=$1
    local containerName=$2
    local port=$3


    # kubectl run nginx-pod --image=nginx --restart=Never --port=80
    kubectl run $containerName --image=$imageName --restart=Never --port=$port


}


fun "$@"

