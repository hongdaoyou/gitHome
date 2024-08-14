#!/bin/bash

# set -x
# 在终端上,写入文件内容
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local fileName=$1
    local confirm=$2
    local optionStr=" > ";

    if [ -n "$confirm" ];then
        optionStr=" >> "
    fi

    # cat > a.file
    # cat $optionStr $fileName
    eval "cat $optionStr $fileName"

}


fun "$@"

