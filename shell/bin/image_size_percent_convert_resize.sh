#!/bin/bash


# 按百分比,调整 大小
function fun() {
    if [ $# -lt 2 ];then
        echo "请输入参数"; exit 1;
    fi

    local file=$1
    local percent=$2

    local dst=0-$file
    convert $file -resize ${percent} $dst

    echo $dst;
}

fun $@

