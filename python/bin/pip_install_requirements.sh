#!/bin/bash

# set -x
# 安装,这个项目的依赖
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local soft=$1

    sudo pip install -r requirements.txt --break-system-packages


}


fun "$@"

