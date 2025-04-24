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

    bee new $projName;
    
    cd $projName
    # 下载组件
    go get  
    cd -

    # 手动创建的 
    # mkdir $projName
    # cd $projName;

    # # 初始化,模块名
    # go mod init $projName

    # # 下载框架
    # go get github.com/astaxie/beego

    # go install github.com/beego/bee@latest
    

}


fun "$@"

