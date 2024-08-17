#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local name=$1

    # dpkg -l | grep $name |  tr -s ' '

    local findStr='';
    if [ -n "$name" ];then
        findStr=" | grep $name ";
    fi
    # echo $findStr
    # set -x
    # dpkg -l | $findStr |  tr -s ' '

    eval " dpkg -l $findStr | tr -s ' ' "
}


fun "$@"

