#!/bin/bash

# set -x
# 运行 vue 项目
function fun() {
    local d1=${1:-~/test/js/vue1}

    # echo $d1
    cd $d1

    yarn dev
}


fun "$@"

