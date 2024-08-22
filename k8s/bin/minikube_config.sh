#!/bin/bash

# set -x
# 查看 minikube 的配置
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local key=${1}
    local value=${2}
    local cmd=${3}

    # minikube config get iso-url

    local s1=$(minikube config  view)

    if [ $# -eq 0 ];then
        echo "$s1"
    elif [ $# -eq 1 ];then
        echo "$s1" | grep "$key"

    elif [ $# -eq 2 ];then
        minikube config $key $value
    else
        # 删除命令
        minikube config $cmd $key
    fi
}


fun "$@"

