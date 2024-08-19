#!/bin/bash


function fun() {
    proj=$1
    if [ -z $proj ]; then
        echo "请输入,项目名"; exit 1;
    fi

    mkdir ${proj}
    mkdir ${proj}/{src,pkg,bin}
}


fun $1


