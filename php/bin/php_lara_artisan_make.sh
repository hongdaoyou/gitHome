#!/bin/bash

# set -x
# 废弃
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local type=$1
    local name=$2

    if [[ $type =~ (controller|model|test|middleware) ]];then
        echo "类型错误"; exit 1
    fi

    # php artisan make:controller UserController:
    php artisan make:$type $name:


}


fun "$@"

