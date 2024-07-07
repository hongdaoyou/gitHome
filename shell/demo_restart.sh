#!/bin/bash
# 拷贝a.go ,到 具体的文件. 再将a-demo.go 拷贝到,a.go. 达到快速重置

if [ $# -lt 1 ] ;then
    echo "请输入,要拷贝到,哪个文件" && exit
fi

dstName=$1

# return

# 获取,扩展名
extensionName=${dstName##*.}

# 如果, a.vue,不存在. 那么,就是 A.vue
if [ -e "a."${extensionName} ] ; then
    preName="a"
else
    preName="A"
fi

srcName=${preName}"."$extensionName
if [ ! -e $srcName ];then
    echo "要拷贝的文件,不存在" && exit
fi

cp $srcName $dstName

# 只有1个参数,拷贝下. 2个参数,就不拷贝了
if [ $# -eq 1 ];then
    # 拷贝,备份
    cp ${preName}"-demo."$extensionName $srcName
fi

echo "拷贝成功"

