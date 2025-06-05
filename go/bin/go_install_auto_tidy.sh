#!/bin/bash

# set -x
# 自动下载,依赖
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1
    
    # go install github.com/go-delve/delve/cmd/dlv@latest
    

}


fun "$@"

