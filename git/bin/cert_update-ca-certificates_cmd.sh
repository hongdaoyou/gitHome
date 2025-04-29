#!/bin/bash

# set -x
# 拷贝,证书,到电脑上. 使浏览器,或其它的访问,不会报错.
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local file=$1
    
    sudo cp $file /usr/local/share/ca-certificates/

    sudo update-ca-certificates
}


fun "$@"

