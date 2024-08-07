#!/bin/bash
# set -x
# 通过,用执行的命令名的通配符, 杀死进程
function kill_by_cmdName() {

    cmdName=$1
    confirmFlag=$2

    if [ $# -eq 0 ];then
        echo "请输入,命令名"; exit 1;
    fi
    
    # 排除掉 grep. xargs,转换成,命令行参数, 然后,杀死
    str=`ps -ef | grep $cmdName  | grep -v "grep" | grep -v "kill_by_cmdName.sh" `
    if [  "$str" = "" ];then
        echo "未找到,该进程";
    else
        echo "$str";
    fi

    if [  "$confirmFlag" = "1" ]; then
        ps -ef | grep $cmdName  | grep -v "grep" | grep -v "kill_by_cmdName.sh" | awk '{print $2}' | xargs -r  kill -9

        if [ $? -eq 0 ];then
            echo "已kill";
        fi        
        # ps -ef | grep "cpu_loop"  | grep -v "grep" | awk '{print $2}' | xargs -r kill
    fi
}

kill_by_cmdName $1 $2


