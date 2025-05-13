#!/bin/bash

# set -x
# 运行,脚本命令
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local cmd="$@"
    
    npm run $cmd
}


fun "$@"

