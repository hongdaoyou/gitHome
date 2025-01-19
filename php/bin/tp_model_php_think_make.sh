#!/bin/bash

# set -x
# 创建,控制器,模型等文件
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local className=$1

    # php think make:controller m1/A1

    php think model $className

}


fun "$@"

