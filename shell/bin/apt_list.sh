#!/bin/bash

# set -x
# 查看,apt已安装,或者,未安装的软件
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local soft=$1

    # apt list --installed
    if [ $# -eq 0 ];then 
        apt list --installed
    elif [ $# -eq 1 ];then 
        apt list --installed | grep $soft
    else
        apt list | grep $soft
    fi

}


fun "$@"

