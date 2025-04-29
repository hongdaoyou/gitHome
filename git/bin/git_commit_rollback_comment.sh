#!/bin/bash

# set -x
# 修改, 提交的备注
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # 回退提交的
    git commit --amend
}


fun "$@"

