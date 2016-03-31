#!/bin/bash
case $1 in 
"start")
	docker run -d -p 50000:22 -v /data0/web/:/data0/web/ --name ssh_control registry.miguan.com/ssh_control 
	;;
"stop")
	docker stop ssh_control
	docker rm ssh_control
	;;
"restart")
	$0 stop
	$0 start
	;;
*)
	echo "usage: $0 start|stop|restart"
esac
