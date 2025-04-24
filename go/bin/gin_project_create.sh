#!/bin/bash

# set -x
# 创建, gin 项目
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local projName=$1

    if [ -f "$projName" ];then
        echo "该目录,已存在"; exit 1;
    fi


    mkdir $projName
    cd $projName;

    # 初始化,模块名
    go mod init $projName

    # 下载框架
    go get github.com/gin-gonic/gin


}


fun "$@"

