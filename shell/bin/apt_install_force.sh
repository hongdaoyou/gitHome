#!/bin/bash

# set -x
# 强制,下载,安装,某个应用 --当依赖冲突时
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1

    # 小写
    soft=$(echo $soft | tr -t 'A-Z' 'a-z')

    sudo apt download $soft

    sudo dpkg --force-depends  -i soft.deb 


}


fun "$@"

