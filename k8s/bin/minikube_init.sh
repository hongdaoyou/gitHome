#!/bin/bash

# set -x
# minikube 的开启,关闭
function fun() {
    
    minikube start --registry-mirror=https://registry.docker-cn.com \
                --image-mirror-country=cn \
                --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers \
                --vm-driver=virtualbox \
                --memory=4096 \
                --cpus=6
}


fun "$@"

