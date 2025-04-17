#!/bin/bash

# set -x
# 加入插件
function fun() {
    if [ $# -lt 1 ];then
        echo "请输入,参数"; exit 1;
    fi
    local soft="$@"

    # yarn add ant-design-vue
    yarn global add $soft 

}


fun "$@"

