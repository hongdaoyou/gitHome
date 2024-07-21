#!/bin/bash
set -x

# 向套接字,发送信息
function send_socket_msg() {
    local msg=$(cat)

    if [ -z "$msg" ];then
        echo "请输入信息"; exit 1;
    fi
    
    if [ $# -lt 2 ];then
        echo "请输入ip, 端口号"; exit 1;
    fi

    # 发送完,立马,就结束
    local optStr=" -N ";

    # 默认 想tcp发送
    if [ $# -eq 2 ];then
        optStr+=" -t ";
    else
        optStr+=" -u ";
    fi

    $(echo "$msg" | nc $optStr $1 $2)

}

send_socket_msg $1 $2 $3

