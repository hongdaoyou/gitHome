#!/bin/bash

# set -x
# 逐行安装，并且将失败的，写入到， fail.log
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1

    while read package; do pip3 install "$package" || echo "跳过: $package" >> fail.log; done < requirements.txt

    pip install $soft

}


fun "$@"

