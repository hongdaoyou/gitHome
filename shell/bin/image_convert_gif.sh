#!/bin/bash

# set -x
# 将图片,转换成,gif
function fun() {
    if [ $# -lt 3 ];then
        echo "请输入,参数"; exit 1;
    fi
    local dst=$1

    shift
    local src="$@"

    # 每隔半秒,播放一帧
	convert -delay 50 -loop 0 $src $dst

}


fun "$@"

