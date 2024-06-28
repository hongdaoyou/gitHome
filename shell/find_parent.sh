#!/bin/bash

# pid=206140; 
pid=${1}

while [ "$pid" -gt 1 ]; do
    ppid=$(ps -o ppid= -p $pid);
    # if [ $ppid = "" ]; then exit() fi;

    cmd=$(ps --no-headers -o comm -p $pid); 
    echo  "PID: $pid, PPID: $ppid  CMD: $cmd";  
    pid=$ppid;
done



