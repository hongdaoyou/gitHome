#!/bin/bash

# set -x
# 删除,某个附加组,附加组
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local groupId=$1
    local user=${2:-$USER}

    # sudo usermod -aG vboxusers $USER

    # set -x
    # local groupName=$(groups $user  | sed "s/$groupId //;s/$user //g" | awk  -F': ' 'NR=1{print $2}' | tr " " ",")
    # # echo $groupName

    # # 重新设置,附加组
    # sudo usermod -G $groupId $groupName


    # gpasswd -d test groupSS
    gpasswd -d $user $groupId

}


fun "$@"

