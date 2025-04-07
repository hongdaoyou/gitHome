#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local url=$1
    local output=$2

    # 参数
    if [ -n "$output" ];then
        output=" -o $output "
    fi

    # 下载
    curl -k $url $output 2>/dev/null
    if [ $? -eq 0 ];then
        echo "下载成功";
    else
        echo "下载失败";
    fi

}


fun "$@"

