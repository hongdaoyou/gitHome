#!/bin/bash

# set -x
# 查看,具体的版本
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local soft=$1

    # 小写
    soft=$(echo $soft | tr -t 'A-Z' 'a-z')

    apt show $soft

}


fun "$@"

