#!/bin/bash

# set -x
# 创建,控制器,模型等文件
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入,参数"; exit 1;
    fi
    local type=$1

    local className=$2

    if [[ ! $type =~ (controller|model|command) ]];then
        echo "类型错误"
    fi

    # php think make:controller m1/A1

    php think $type $className

}


fun "$@"

