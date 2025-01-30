#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local num=${1:-1}

    xrandr --output LVDS-1 --brightness $num

}


fun "$@"

