#!/bin/bash

# set -x
# 返回,字符串的 路径
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local name=${1-sshd}

    fail2ban-client status $name 
}


fun "$@"

