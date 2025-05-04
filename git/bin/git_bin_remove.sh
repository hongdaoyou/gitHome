#!/bin/bash

# set -x
# 去除掉,二进制文件. 不提交. 当,已经 git add .
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    # 去除掉,二进制文件. 不提交. 因为, my_c.c 会被编译成 my_c
    git diff --cached --name-only | xargs file | grep -E "ELF|Mach-O" | cut -d: -f1 | xargs git reset --
}


fun "$@"

