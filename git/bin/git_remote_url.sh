#!/bin/bash

# set -x
# 获取,设置远程的地址 (未弄好)
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # git remote add origin git@github.com:hongdaoyou/${repoName}.git
    local name=$1
    local url=$2

    # git remote "$@"
    if [ $# -eq 0 ];then
        git remote -v
    elif [ $# -eq 1 ];then
        # git remote "$@" | grep "name"
        git remote get-url $name

    elif [ $# -eq 2 ];then
        if [[ "$url" =~ @ ]];then
            git remote set-url $name $url
            # git remote $url 
        fi
    fi
}


fun "$@"

