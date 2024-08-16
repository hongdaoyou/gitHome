#!/bin/bash

# set -x
# 查看,某个日期之后的内容
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local t1=${1:-`date +'%Y-%m-%d -1day'`}
    
    set -x
    git log --after="$t1" --reverse

}


fun "$@"

