#!/bin/bash

# set -x
# 查看,当前的文件总数
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local s1=$1

    local option
    if [ -n "$s1" ];then
        option="R"
    fi
    ls -l${option} | grep "^-" | wc -l

}


fun "$@"

