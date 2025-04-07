#!/bin/bash

set -x
# 录屏
function fun() {
    # if [ $# -lt 1 ];then
    #     echo "请输入,参数"; exit 1;
    # fi
    
    local file=${1:-output-$(date +%s).mp4}

    if [ -f "$file" ]; then
        echo "$file 文件,已存在; "; exit 1
    fi
    # 分辨率
    local size=$(xrandr | grep '*' | awk '{print $1}')


    # ffmpeg -f x11grab -framerate 25 -video_size 1600x900 -i :0.0 output.mp4
    # ffmpeg -f x11grab -framerate 25 -video_size $size -i :0.0 $file &>/dev/null

    ffmpeg -f x11grab -framerate 25 -video_size $size -i :0.0  -f pulse -i default -c:v libx264 -c:a aac -strict experimental -preset ultrafast $file &>/dev/null

}


fun "$@"

