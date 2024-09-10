#!/bin/bash

# set -x
# 获取,当前运行的服务
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1
    
    kubectl get services

}


fun "$@"

