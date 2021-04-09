#!/bin/bash
testfile=/dev/shm/netstat_checking.txt
netstat -tlnp > ${testfile}
testing=$(grep ":22 " ${testfile})   # 偵測看 port 80 在否？
if [ "${testing}" != "" ]; then
	echo "WWW is running in your system."
fi


