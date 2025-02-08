#!/bin/bash

# set -x
# 查看,登录成功,或失败的 用户
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1


    sudo cat /var/log/auth.log | grep -e "session opened" -e "authentication failure"

}


fun "$@"

