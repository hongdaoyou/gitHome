#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1

    # skopeo inspect docker://nginx:latest | grep Size

    # skopeo inspect docker://${soft} | jq '.Size' 

    curl -s "https://hub.docker.com/v2/repositories/library/$soft/tags/" | \
    jq '.results[].images[] | select(.architecture == "amd64") | {size: (.size / (1024 * 1024)), last_pushed}' | \
    jq -s 'sort_by(.last_pushed) | reverse' | \
    jq '.[0] | {size: .size, unit: "MB"}'
    
}


fun "$@"

