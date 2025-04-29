#!/bin/bash

# set -x
# 工作区,不修改. 但是,暂存区,去掉
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # 回退提交的 .暂存区,清除掉
    # git reset HEAD~1

    git reset HEAD~1


}


fun "$@"

