#!/bin/bash

# set -x
#  电脑,录像
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local file=${1:-output.mp4}
    if [ -f "$file" ]; then
        echo "$file 文件,已存在; "; exit 1
    fi
    # 分辨率
    local size=$(xrandr | grep '*' | awk '{print $1}')

    ffmpeg -f v4l2 -i /dev/video0 -f alsa -i default -c:v libx264 -c:a aac -strict experimental -video_size $size -framerate 30 $file



}


fun "$@"

