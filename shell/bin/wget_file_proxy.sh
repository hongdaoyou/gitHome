#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local url=$1

    # 导入代理
    proxy_export
    wget $url
    # wget  https://ghgo.xyz/$url

    proxy_del
}

fun "$@"

