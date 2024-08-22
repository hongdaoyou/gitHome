#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local dir=$1

    local confirm=$2

    if [ -n "$confirm" ]; then
        confirm='';
    else
        confirm='--no-site-packages';
    if
    

    virtualenv $dir  $confirm


}


fun "$@"

