#!/bin/bash

# set -x
# 列出,当前,导入的依赖
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # go list -m all

    go list -f '{{ join .Imports "\n" }}' 

}


fun "$@"

