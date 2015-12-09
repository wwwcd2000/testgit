#!/bin/bash
 
#先获取物理终端的列数,stty会获取物理终端的行数和列数，下面我只需列数。
COL=`stty -F /dev/console size |awk '{print $2}'`
 
#预先留给右边字符一定的列数。
FIXCOL=$[$COL-14]
 
#计算左边字符所需要占的列数。用$1表示左边的字符，用#取出字符个数。
RCOL=${#1}
 
#计算中间所需的空白字符数
SPACOL=$[$FIXCOL-$RCOL]
 
#输出一条信息
echo -n $1
for i in `seq 1 $SPACOL`;do
    
echo -n " "
done
echo -e "\033[32m[  OK  ]\033[0m"
