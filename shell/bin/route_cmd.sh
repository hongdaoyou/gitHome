#!/bin/bash

# set -x
# 对路由,进行操作
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi


}


fun "$@"
