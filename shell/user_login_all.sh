#!/bin/bash

# set -x
# 登陆的全部,信息
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    echo -e "\n登陆成功的用户:"
    last

    echo -e "\n登陆失败的用户:"
    sudo lastb 

    echo -e "\n登陆失败的统计:"

    sudo faillog -a
}


fun "$@"

