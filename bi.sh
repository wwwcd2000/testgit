#!/bin/bash
 
for I in {1..10};do
#将$RANDOM附值给MYRAND，下面再调用这个变量，不然$RANDOM做比较时会产生新的随机数。
    
MYRAND=$RANDOM
#第一次循环时把随机数附值给MAX和MIN。    
    
if [ $I -eq 1 ];then
        
MIN=$MYRAND
        
MAX=$MYRAND
    
fi
#循环9次都用echo -n加逗号不换行显示，以一行显示随机数。
    
if [ $I -le 9 ];then
        
echo -n "$MYRAND," 
    
else
        
echo "$MYRAND"
    
fi    
#第一次循环时，由于MAX和MIN都等于$MYRAND,所以不比较。第二次循环开始比较第一次，第三次循环比较第二次，以此累推。
    
if [ $MYRAND -gt $MAX ];then
        
MAX=$MYRAND
    
elif [ $MYRAND -lt $MIN ];then
        
MIN=$MYRAND
    
fi
done
echo "最大值为：$MAX"        
echo "最小值为：$MIN"
