#!/bin/bash

# set -x
# 运行,项目
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    yarn serve

}


fun "$@"

