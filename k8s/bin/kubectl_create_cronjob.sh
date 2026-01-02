#!/bin/bash

# set -x
# 创建,各种服务
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    
    local name=${1}
    local image=$2

    # kubectl create deployment $name --image=${image} --dry-run=client -o yaml > ${name}.yaml
    kubectl create cronjob cron11 --image=${image} --schedule="*/1 * * * *" --dry-run=client -o yaml > ${name}-cronjob.yaml

    # kubectl create cronjob cron11 --image=busybox --schedule="*/1 * * * *" --dry-run=client -o yaml > cron11-cronjob.yaml

}


fun "$@"

