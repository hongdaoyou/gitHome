#!/bin/bash

# set -x
# 将一个文件的每一行, 在一个另一个文件中,进行替换

function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local s=$1

    php $gitHome/php/replace_file_by_file.php

}


fun "$@"

