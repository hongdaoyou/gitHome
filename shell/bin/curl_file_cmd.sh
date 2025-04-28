#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi

    local url=$1
    local file=$2 # 代理地址

    curl $url -o $file
    if [ $? -eq 0 ];then
        echo "下载成功";
    else
        echo "下载失败";
    fi

}


fun "$@"

