#!/bin/bash

# set -x
# 将UML的 双引号,转换成, 单引号
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local file=$1


    sed -i -E "s/\"([':=<\/>1-9a-zA-Z\+\\%\$\^-]+)\"/'\1'/g" $file

    # echo 'aaa' > $file
# echo 'AA:'$file
    
}



fun "$@"

