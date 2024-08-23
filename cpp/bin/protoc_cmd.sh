#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local type=$1 # 类型
    local file=$2 # 文件

    # protoc --cpp_out=. person.proto

    protoc --${type}_out=. $file


}


fun "$@"

