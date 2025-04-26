#!/bin/bash

# set -x
# 执行,redis 的命令

function fun() {

    host=127.0.0.1
    port=6379
    passwd=123456

    local cmd=$*
    # set -x
    redis-cli -h $host -p $port $cmd

    # redis-cli -h $host -p $port -a $passwd $@ 

}

fun "$*"

