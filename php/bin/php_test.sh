#!/bin/bash

# set -x
# 检查,文件,是否 有语法错误
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s="$@"

    php -l "$s"

}


fun "$@"

