#!/bin/bash

# set -x
# 查看,某次提交的文件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local url=${1:-1}

    set -x
    git show @~$url --name-status

}


fun "$@"

