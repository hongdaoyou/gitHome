#!/bin/bash

# set -x
# 给某个用户,添加,附加组
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local groupId=$1
    local user=${2:-$USER}

    # sudo usermod -aG vboxusers $USER

    # sudo usermod -aG $groupId $user

    gpasswd -a $user $groupId
}


fun "$@"

