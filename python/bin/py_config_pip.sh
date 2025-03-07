#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi

    local key=$1
    local value=$2

	# pip3 config get global.index-url

    # set -x
    if [ -z "$key" ];then
        pip3 config list
    elif [ -z "$value" ];then
        pip3 config list | grep "$key"
    else
        key2=$(pip3 config list | grep "$key"| awk -F'=' 'NR==1 {print $1}' )
        echo $key2
        pip3 config set $key2 $value
    fi

}


fun "$@"

