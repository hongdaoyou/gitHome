#!/bin/bash

# set -x
# 查看,包含,内容的 文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local s1=$1

    git grep -i  "$s1"
}


fun "$@"

