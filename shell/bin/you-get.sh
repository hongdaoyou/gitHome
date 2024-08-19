#!/bin/bash

# set -x
# 下载,图片,视频,音乐等
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local url=$1

    # you-get -i https://csdn
    you-get -i $url
}


fun "$@"

