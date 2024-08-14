#!/bin/bash

# set -x
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local url=$1
    local file=$2
    local optionStr;

    if [ $# -gt 1 ];then
        if [ ! -f $file  ];then
            echo "该文件,不存在"; exit 1;
        fi
        optionStr=" -i $file "
        echo $optionStr
    else
        optionStr=" -o PubkeyAuthentication=no "
    fi
    # set -x
    ssh $url  $optionStr

}

fun "$@"

