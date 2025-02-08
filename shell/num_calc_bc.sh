#!/bin/bash

# 进制转换,字符串
function bc_calc() {

    local cmd;
    local scaleNum;

    if [ $# -eq 0 ];then
        echo "请输入,计算的字符串"; exit 1;
    
    elif [ $# -eq 2 ];then
        scaleNum=$2;
    else
        # 默认保留,2位小数
        scaleNum=2;
    fi

    local msg=${1};

    echo " scale=$scaleNum ;  $msg" | bc

}


bc_calc $1  $2


