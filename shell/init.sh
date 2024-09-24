#!/bin/bash

a1='''
export gitHome=~/data/gitHome

# 将shell路径,加载进去
source $gitHome/shell/load_shell_path.sh

'''

echo "$a1" >> /etc/profile
