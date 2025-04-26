#!/bin/bash

# set -x
# 切换到,提交点. 再返回,到主提交点
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
 
    git checkout $(git branch -l | tail -1)
    git checkout master
    git checkout -

    # cd -
}


fun "$@"

