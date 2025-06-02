#!/bin/bash

# set -x
# 替换,文件中内容
function fun() {
    if [ $# -lt 3 ];then
        echo "请输入,参数: 被替换的字符串, 替换字符串. 文件名"; exit 1;
    fi
    local s1=$1
    local s2=$2
    local file=$3

    if [ -f $file ]; then
        echo "文件名,不存在"; exit 1;
    fi
    
    # sudo sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" a.file /etc/ssh/sshd_config
    
    sudo sed -i -e "s/$s1/$s2/" $file

    if [ $? -eq 0 ];then
        echo "替换成功";
    else
        echo "替换失败";
    fi
}


fun "$@"

