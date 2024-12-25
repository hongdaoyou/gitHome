#!/bin/bash

# set -x
# 杀死,没用的,进程
function fun() {

    # 待删除的命令
    local fileArr=(
        'packagekitd'
        'apt-check'
        'wpsoffice /qingbangong'
    )
    local ret;
    
    for file in ${fileArr[*]}; do
        # echo $file
        
        # 先查找. 再kill
        ret=$(kill_by_cmdName.sh "$file")
        # echo ${ret:0:3};
        if [ ${ret:0:3} != '未找到' ];then
            kill_by_cmdName.sh "$file" 1
        fi
    done

    echo "全部结束"

}


fun "$@"

