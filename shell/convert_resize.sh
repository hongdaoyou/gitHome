#!/bin/bash


function convert_resize() {
    if [ $# -lt 3 ];then
        echo "请输入参数"; exit 1;
    fi

    local file=$1
    local width=$2
    local height=$3

    local dst=0-$file
    convert -resize ${2}x${3} $file $dst

    echo $dst;
}

convert_resize $@

