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

    # 添加,shell. 默认是,/bin/sh
    local optionStr=" -s /bin/bash ";
    
    # 添加备注
    if  [ -n "$comment" ];then
        optionStr+=" -c $comment"
    fi

    # 创建用户
    sudo useradd $user -m $optionStr
    if [ $? -lt 0 ];then
        echo "创建失败"; exit 1;
    fi

    # 修改密码
    echo "$user:$passwd" | sudo  chpasswd
    if [ $? -eq 0 ];then
        echo "创建成功"; exit 1;
    fi

}


fun "$@"

