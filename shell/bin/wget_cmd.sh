#!/bin/bash

# set -x
# 直接查看,下载的内容. 并且执行
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local url=$1
    local confirm=$2

    local s1=$(wget --no-check-certificate -qO- $url )
    
    if [ -n "$confirm" ];then
        # 执行
        echo "$s1" | bash
    else

        echo "$s1"
    fi


}


fun "$@"

