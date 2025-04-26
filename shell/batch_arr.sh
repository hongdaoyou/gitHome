#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    # 定义,文件数组
    arr=(
        ~/a
        ~/b
    )

    # 遍历,文件数组
    for file in ${arr[@]}; do
        echo $file

    done 
}


fun "$@"

