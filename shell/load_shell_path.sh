#!/bin/bash
source $gitHome/shell/common.sh

# 加载,shell的路径
function load_shell_path() {
    local binPathArr=${binPathArr[@]};

    local path;
    for path in ${binPathArr[@]}; do
        # PATH=$PATH:${path}
        export PATH=${path}:$PATH

    done
}


load_shell_path

