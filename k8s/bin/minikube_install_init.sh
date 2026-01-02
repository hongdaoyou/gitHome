#!/bin/bash

# set -x
# minikube 的开启,关闭
function fun() {
    curl -Lo minikube https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-amd64
    chmod +x minikube
    sudo mv minikube /usr/local/bin/

    # 安装 kubectl
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin

    minikube start --registry-mirror=https://docker.1ms.run \
                --vm-driver=docker \
                --memory=3096 \
                --cpus=3
    
    # minikube start --registry-mirror=https://registry.docker-cn.com \
    #             --image-mirror-country=cn \
    #             --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers \
            registry.cn-hangzhou.aliyuncs.com/google_containers
                不存在, 只能使用,默认的

    #             --vm-driver=virtualbox \
    #             --memory=4096 \
    #             --cpus=6
}


fun "$@"

