#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    # local globalStr=''
    # if [ -n "$1" ];then
    #     globalStr="-g"
    # fi

    # yarn config set registry https://registry.npm.taobao.org/  # 被废弃了
    yarn config set registry https://registry.npmmirror.com

}


fun "$@"

