#!/bin/sh
while [ 1 ]
do
	pid=`ps -ax|grep FuzzyAgent|grep -v grep|sed -e "s/^[ ]\+//g" -e "s/ .*$//g"`
	if [ "${pid}" != "" ]; then
		echo "Attaching to ${pid}"
		gdb --pid=${pid} --command=command >> logs
	fi
done

