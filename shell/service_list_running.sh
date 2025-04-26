#!/bin/bash

# set -x
# systemd 列出 存活的服务
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1

    systemctl list-units --type=service --state=running


}


fun "$@"

