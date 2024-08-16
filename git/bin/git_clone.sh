#!/bin/bash

# set -x
# 简单的,拷贝url
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local $url=$1;
    git clone --depth 1 -b master $url

}


fun "$@"

