#!/bin/bash

# set -x
# 查看,搜索.包含,某个文件的 提交日志
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local pos=${1:-0}


    # set -x
    git log -n1 --name-only @~${pos}
    # cd -
}


fun "$@"

