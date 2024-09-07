#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1
    
    # sudo docker pull $soft
    sudo docker pull docker.registry.cyou/library/$soft
    
}


fun "$@"
