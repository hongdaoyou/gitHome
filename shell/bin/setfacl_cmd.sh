#!/bin/bash

# set -x
# 设置,某个用户的权限
function fun() {
    if [ $# -lt 3 ];then
        echo "请输入,参数"; exit 1;
    fi

    local user=$1
    local power=$2
    local file=$3

    # 设置,某个用户的权限
    setfacl -m u:${user}:${power} $file

    # 查看
    getfacl $file 
}


fun "$@"

