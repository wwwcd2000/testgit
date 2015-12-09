#!/bin/bash
if [ $# -lt 3 ];then
 
echo "只接受三个数字参数"
exit 3
elif [ $# -gt 3 ];then
echo "只接受三个数字参数"
exit 3
fi
 
if [ $1 -gt $2 ];then
 
MAX=$1
MIN=$2
 
else
 
MAX=$2
 
MIN=$1
 
fi
 
if [ $MIN -gt $3 ];then
MIN=$3
 
elif [ $MAX -lt $3 ];then
 
MAX=$3
 
fi
 
echo "最大为$MAX,最小为$MIN"
echo "this is v0.2"
