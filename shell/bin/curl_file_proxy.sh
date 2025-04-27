#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local url=$1
    local proxy=$2 # 代理地址

    # set -x
    curl --proxy $proxy $url
    # curl --proxy 127.0.0.1:3128 https://www.baidu.com
    if [ $? -eq 0 ];then
        echo "下载成功";
    else
        echo "下载失败";
    fi

}


fun "$@"

