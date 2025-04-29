#!/bin/bash

# 查看,一个进程的父进程,子进程,执行的命令

# pid=206140; 
pid=${1}
firstPid=$pid

while [ "$pid" -gt 1 ]; do
    ppid=$(ps -o ppid= -p $pid);
    # if [ $ppid = "" ]; then exit() fi;

    cmd=$(ps --no-headers -o comm -p $pid); 
    echo  "PID: $pid, PPID: $ppid  CMD: $cmd";  
    pid=$ppid;
done


# 查找,它的子进程
function find_child() {
    # ppid=$(ps -o pid -ppid $pid)
    pgrep -P $firstPid  | xargs -r ps -p
}

find_child


