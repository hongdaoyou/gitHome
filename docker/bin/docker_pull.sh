#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1
    local domain=$2

    if [ -n "$domain" ]; then
        domain="docker.registry.cyou/library/"
    fi
    
    # sudo docker pull $soft
    sudo docker pull ${domain}${soft}
    
}


fun "$@"

