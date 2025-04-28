#!/bin/bash
source $gitHome/shell/common.sh

# 加载,shell的路径
function load_shell_path() {
    export PATH=$PATH:$(echo $noteDir/0-wen/0-batch/{shell,系统脚本,系统配置}|tr ' ' ':')


    local binPathArr=${binPathArr[@]};

    local path;
    for path in ${binPathArr[@]}; do
        # PATH=$PATH:${path}
        export PATH=${path}:$PATH

    done
}


load_shell_path

