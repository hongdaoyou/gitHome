#!/bin/bash

# 通过,用执行的命令名的通配符, 杀死进程
function kill_by_cmdName() {

    cmdName=$1
    confirmFlag=$2

    if [ $# -eq 0 ];then
        echo "请输入,命令名"; exit 1;
    fi
    
    # 排除掉 grep. xargs,转换成,命令行参数, 然后,杀死
    ps -ef | grep $cmdName  | grep -v "grep"

    if [ $confirmFlag -eq 1 ]; then
        ps -ef | grep $cmdName  | grep -v "grep" | awk '{print $2}' | xargs -r kill
        # ps -ef | grep "cpu_loop"  | grep -v "grep" | awk '{print $2}' | xargs -r kill
    fi
}

kill_by_cmdName $1 $2


