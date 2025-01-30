#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local dir=${1:-.};
    local pos=$2;

    local d1=$(pwd)

    local s1
    if [ -n "$pos" ];then
        # 暂存区的
        s1="--cached"
    fi
    # 默认是,工作区的,进行对比

    cd $dir
    # git diff --name-only --cached
    git diff --name-only $s1
    # git diff --name-status $s1

    # 复原
    cd ${d1}
}


fun "$@"

