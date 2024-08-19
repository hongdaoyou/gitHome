#!/bin/bash

# set -x
# minikube 的开启,关闭
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local cmd=$1


    case $cmd in
        'init')
            minikube start --registry-mirror=https://registry.docker-cn.com \
                --image-mirror-country=cn \
                --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers \
                --vm-driver=virtualbox \
                --memory=4096 \
                --cpus=6

            ;;
        'start'|'stop')
            minikube $cmd
            ;;
        *)
            echo "参数错误"
        ;;
    esac

}


fun "$@"

