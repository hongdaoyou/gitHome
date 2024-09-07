#!/bin/bash

# set -x
# 查看,某个软件安装的大小
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    local soft=$1

    local s1=$(dpkg -s $soft | grep Installed-Size)
    if [ -n "$s1" ];then
        echo "$s1"
    else
        s1=$(apt-cache show $soft | grep Installed-Size)
        # if [ -z "$s1" ];then
        #     # local s2=$(whereis $soft | awk '{for (i=2;i<NF;i++) print $i }')
        #     # local s2=$(whereis $soft | awk '{for (i=2;i<NF;i++) s+ }')
        
        # fi

    fi
}


fun "$@"

