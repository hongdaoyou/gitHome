#!/bin/bash

# set -x

# 进制转换,字符串
function convert_bin_hex() {

    if [ $# -lt 2 ];then
        echo "打印字符串"; exit 1;
    fi
    local ibase=$1
    local obase=$2

    local msg=$(cat);

    # echo " ibase=$ibase; obase=$obase ; $msg" | bc
    echo " obase=$obase; ibase=$ibase;  $msg" | bc

}


convert_bin_hex $1 $2

