#!/bin/bash

# set -x
# 列出,apt安装 软件的位置
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1

   dpkg -L $soft


}


fun "$@"

