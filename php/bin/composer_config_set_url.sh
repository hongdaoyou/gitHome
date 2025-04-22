#!/bin/bash

# set -x
# 配置,软件源
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
}


fun "$@"

