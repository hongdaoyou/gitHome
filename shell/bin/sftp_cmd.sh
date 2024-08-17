#!/bin/bash

# set -x
# 登录,sftp.并且,进行操作
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local url=$1
    shift
    local cmd="$*"

    # 登录,并进行操作
    if [ -n "$cmd" ];then
        echo "$cmd" | sftp $url
    else
        sftp $url
    fi

}


fun "$@"

