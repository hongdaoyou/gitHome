#!/bin/bash

# set -x
# 
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local url=$1

    # https://ghp.ci/https://github.com/v2rayA/v2rayA/releases/download/v2.2.5.8/installer_redhat_x64_2.2.5.8.rpm

    wget https://ghp.ci/$url
}


fun "$@"

