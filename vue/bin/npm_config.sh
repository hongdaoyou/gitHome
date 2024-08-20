#!/bin/bash

# set -x
# 获取,设置,npm的配置 | 未测试
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local key=$1
    local value=$2

	# npm install -g cnpm --registry=https://registry.npm.taobao.org/
	local s1=$(npm config list)

    if [ -n "$key" ];then
        echo "$s1" | grep "$key"
    else
        echo "$s1"
    fi

    if [ -n "$value" ];then
    	npm config set $key $value

    fi
}


fun "$@"
