#!/bin/bash

set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # local globalStr=''
    # if [ -n "$1" ];then
    #     globalStr="-g"
    # fi

    yarn global list

}


fun "$@"

