#!/bin/bash

argNum=$#

# base64-解析后,存放在,当前文件1
function a_base64() {
    if [ ${argNum} -eq 0 ];then
        echo "编码"
        # base64,编码
        base64 -w0 ~/data/note/0-wen/0-tmp/tmp5 >  1
    else
        echo "解码"
        # 解码
        base64 -d ~/data/note/0-wen/0-tmp/tmp5 >  1
    fi
}
a_base64

