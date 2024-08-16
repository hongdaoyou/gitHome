#!/bin/bash

# set -x
# 查看,某个文件名
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    
    local fileName=$1

    # git log

    # set -x
    git log --name-only -n 4 -- *$fileName*

    # cd -
}


fun "$@"

