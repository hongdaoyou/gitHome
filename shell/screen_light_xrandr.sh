#!/bin/bash

# set -x
# 
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    local num=${1:-1.7}

    local screenName=$(xrandr --query | grep connected | awk '{print $1}')
    xrandr --output $screenName --brightness $num
    # xrandr --output LVDS-1 --brightness $num

}


fun "$@"

