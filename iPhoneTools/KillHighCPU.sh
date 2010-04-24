#!/bin/sh
while [ 1 ]
do
	PS_LINE=`ps -eo pcpu,pid,comm|grep Fuzzy`
	CPU_USAGE=`echo $PS_LINE|sed -e "s/^[ ]\+//g" -e "s/[\.][0-9]\+ .*//g"`
	PID=`echo $PS_LINE|sed -e "s/^[0-9\.]\+[ ]\+//g" -e "s/ .*$//g"`
	if [ $CPU_USAGE -ge 90 ]; then
		echo $CPU_USAGE,$PID
		kill -9 $PID
	fi
	sleep 60
done

