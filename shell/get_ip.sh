#!/bin/bash
# set -x

function get_ip() {

    if [ $# -eq 0 ];then
        echo "请输入,域名"; exit 1;
    fi

    # 域名
    url=$1
    # str=$(nslookup $url)
    # echo $str

    # ip=$(nslookup $url |  grep "Address:" )

    ip=$(nslookup $url |  grep "Address:" | awk 'NR==2{ print $2;}' )

    echo $ip
}


get_ip $1

