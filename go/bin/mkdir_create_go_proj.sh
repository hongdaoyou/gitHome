#!/bin/bash


function create_go_proj() {
    proj=$1
    if [ -z $proj ]; then
        echo "请输入,项目名"; exit 1;
    fi

    mkdir ${proj}
    mkdir ${proj}/{src,pkg,bin}
}


create_go_proj $1


