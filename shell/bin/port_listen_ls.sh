#!/bin/bash

# set -x
# 列出,监听的端口号 udp, 和tcp
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    sudo ss -lntup  | awk '{print $5}' | grep -v Local | awk -F':' '{print $NF}' |  sort -u
}


fun "$@"

