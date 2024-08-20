#!/bin/bash

# set -x
# 更新,某个软件
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1

    local globalFlag=$2

    # 是否,全局安装
    if [ -n "$globalFlag" ];then
        globalFlag=" global "
    fi

	yarn upgrade $globalFlag $soft

}


fun "$@"

