#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft=$1
    
	# composer create-project laravel/laravel

	composer create-project $soft


}


fun "$@"

