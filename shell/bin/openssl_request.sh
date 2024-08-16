#!/bin/bash

# set -x
# 生成证书请求,并签名
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi


}


fun "$@"

