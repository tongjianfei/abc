#!/bin/bash
read -p "请输入第一个整数：" num1 
read -p "请输入第二个整数：" num2
read -p "请输入第三个整数：" num3
[ -z $num1 ]||[ -z $num2 ]||[ -z $num3 ]&&echo "不能输入空白!"&&exit

	expr $num1 + $num2 &> /dev/null
[ $? -ne 0 ]&&echo "请全部输入整数"&&exit


	expr $num2 + $num3 &> /dev/null

[ $? -ne 0 ]&&echo "全部请输入整数"&&exit

[ $num1 -eq $num2 ]&&[ $num2 -eq $num3 ]&&[ $num3 -eq $num1 ]&&echo "$num1 $num2 $num3"&&exit

if [ $num1 -gt $num2 ]&&[ $num2 -gt $num3 ]&&[ $num1 -gt $num3 ];then
	a=$num3
	b=$num2
	c=$num1
elif [ $num1 -gt $num2 ]&&[ $num1 -gt $num3 ]&&[ $num2 -lt $num3 ];then
	a=$num2
	b=$num3
	c=$num1
elif [ $num2 -gt $num1 ]&&[ $num2 -gt $num3 ]&&[ $num1 -lt $num3 ];then
	a=$num1
	b=$num3
	c=$num2
elif [ $num2 -gt $num1 ]&&[ $num2 -gt $num3 ]&&[ $num1 -gt $num3 ];then
	a=$num3
	b=$num1
	c=$num2
elif [ $num3 -gt $num1 ]&&[ $num3 -gt $num2 ]&&[ $num1 -gt $num2 ];then
	a=$num2
	b=$num1
	c=$num3
elif [ $num3 -gt $num1 ]&&[ $num3 -gt $num2 ]&&[ $num1 -lt $num2 ];then
	a=$num1
	b=$num2
	c=$num3
fi
	echo "$a $b $c"
	
