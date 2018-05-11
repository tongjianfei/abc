#!/bin/bash
read -p "猜拳游戏！！剪刀,石头，布！请出拳：" num
tmp=`echo $[RANDOM%3]`
#if [ -z $num ]
#then
#	echo "请输入石头、剪刀或者布！"  

#elif [ $num != '剪刀' ] && [ $num != '石头' ] && [ $num != '布' ] 
#then
#	echo "请不要不按常理出牌！！" 
#fi
case $num in 
剪刀)
		if [ $tmp -gt 1 ]
		then
			echo "石头，你输了！！"
		elif [ $tmp -lt 1 ]
		then
			echo "布，你赢了！！"
		else
			echo "剪刀，平手！！"
		fi;;
石头)
		if [ $tmp -gt 1 ]
		then
			echo "布，你输了！！"
		elif [ $tmp -lt 1 ]
		then
			echo "剪刀，你赢了！！"
		else
			echo "石头,平手！！"
		fi;;
布)
		if [ $tmp -gt 1 ]
		then
			echo "剪刀，你输了！！"
		elif [ $tmp -lt 1 ]
		then
			echo "石头,你赢了！！"
		else
			echo "布，平手！！"
		fi;;
*)
		echo "请输入石头，剪刀，布"
esac

