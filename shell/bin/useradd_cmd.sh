#!/bin/bash

# set -x
# 新增,用户 
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local user=$1
    local passwd=$2
    local comment=$3

    local optionStr;
    if  [ -n "$comment" ];then
        optionStr=" -c $comment"
    fi

    sudo useradd $user -m $optionStr
    if [ $? -lt 0 ];then
        echo "创建失败"; exit 1;
    fi

    echo "$user:$passwd" | sudo  chpasswd
    if [ $? -eq 0 ];then
        echo "创建成功"; exit 1;
    fi

}


fun "$@"

