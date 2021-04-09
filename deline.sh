#!/bin/bash
# Program:
#	You input your demobilization date, I calculate how many days before you demobilize.
# History:
# 2015/07/16	VBird	First release
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 1. 告知使用者這支程式的用途，並且告知應該如何輸入日期格式？
echo "This program will try to calculate :"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date (YYYYMMDD ex>20150716): " date2


date_d=$(echo ${date2} |grep '[0-9]\{8\}')   # 看看是否有八個數字
if [ "${date_d}" == "" ]; then
	echo "You input the wrong date format...."
	
fi

