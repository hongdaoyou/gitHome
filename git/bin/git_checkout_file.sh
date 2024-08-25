#!/bin/bash

# set -x
# 下载,某个可能被删除的文件   未测试
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file=$1
    local confirm=$2

    # git log --name-status
	local s1=$(git log --name-status  -- *$file*)

    if [[ -n "$confirm" && -n "$s1" ]];then
        local name1=$(echo "$s1" | sed "1p")

        echo "$name1"
        git checkout -- $name1
    else
        echo "$file"
    fi

    # git checkout -- a.html
    
}


fun "$@"

