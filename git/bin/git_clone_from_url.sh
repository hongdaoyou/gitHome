#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local url=$1

    local d1=${2:-d1}

    if [ -d $d1 ] {
        echo "$d1 目录,已存在"; exit 1;
    }
    mkdir $d1
    cd $d1

    # git init;

    # git remote set

    # git pull
    git clone $url

}


fun "$@"

