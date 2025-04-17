#!/bin/bash

# set -x
# 列出,yarn 的配置
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    # local s=$1

    yarn config list


}


fun "$@"

