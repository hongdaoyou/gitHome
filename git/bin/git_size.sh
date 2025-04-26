#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,类似 open-webui/open-webui即可"; exit 1;
    fi
    local name=$1

    # curl -s https://api.github.com/repos/open-webui/open-webui | jq .size
    local num=$(curl -s https://api.github.com/repos/$name | jq .size )
    # echo $num
    local MbNum=$(echo "scale=2; $num / 1024" | bc )
    echo $MbNum "Mb"
}


fun "$@"

