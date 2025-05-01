#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local content=$1

    # 1. 激活 Chrome 窗口
    xdotool search --name "Google Chrome" windowactivate

    # ​​强制移出光标​​. 避免,当前网页上.出现错误
    xdotool mousemove 0 0

    # 1 新建,tab页
    xdotool key Ctrl+t
    
    # 转换成,英文,输入法
    fcitx5-remote -o

    # 2. 模拟,快捷键 Ctrl + L (聚焦地址栏)
    xdotool key Ctrl+l

    # 3. 输入 URL 并回车
    # xdotool type --clearmodifiers "https://github.com/search?q=${content}&type=repositories"
    xdotool type  "https://www.google.com/search?q=${content}"

    xdotool key Return
    
    # 不能恢复, 因为, 
    # fcitx5-remote -c # 恢复


}


fun "$@"

