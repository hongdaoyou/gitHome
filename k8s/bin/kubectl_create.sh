#!/bin/bash

# set -x
# 创建,各种服务
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local type=$1
    
    local name=$2
    local image=$3

    # kubectl create deployment my-deployment-1 --image=nginx --dry-run=client -o yaml > d1.yaml

    case $type in
        'deployment')
            kubectl create deployment $name --image=${image} --dry-run=client -o yaml > ${name}.yaml
            ;;
        'service')
		    # kubectl create service clusterip my-service --tcp=801:8080 --dry-run=client -o yaml > s1.yaml

		    kubectl create service clusterip $name --tcp=${port} --dry-run=client -o yaml > ${name}.yaml
            ;;

        'namespace')
            kubectl create namespace $name

            ;;
        '*')
            echo "参数错误"
    esac

}


fun "$@"

