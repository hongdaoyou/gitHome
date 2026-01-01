#!/bin/bash

# set -x
# 执行, Playbook 剧本
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file=$1

    if [ ! -f $file ];then
        echo "文件,不存在"; exit 1;
    fi

    # ansible-playbook nginx-install.yml
    ansible-playbook $file

}

fun "$@"

