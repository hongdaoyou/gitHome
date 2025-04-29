#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi

    # yarn global add create-vite
    create-vite $proj

    cd $proj
	yarn install

    # yarn dev

}


fun "$@"

