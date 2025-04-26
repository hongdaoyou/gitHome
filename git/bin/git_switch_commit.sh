#!/bin/bash

# set -x
# 切换到,提交点. 对文件,进行操作
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    
    local commit=$1

    # git switch $commit
    git checkout $commit

    # cd -
}


fun "$@"

