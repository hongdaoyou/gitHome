#!/bin/bash

# set -x
# 修改备注
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # 回退提交的 .暂存区,清除掉
    # git reset HEAD~1

    git reset --soft HEAD~1


}


fun "$@"

