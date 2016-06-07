#!/bin/bash
NAME=python3-release
case $1 in 
"start")
	docker run -d -p 50000:22 -v /data0/python/:/data0/python/ --name $NAME registry.miguan.com/$NAME
	;;
"stop")
	docker stop $NAME
	docker rm $NAME
	;;
"restart")
	$0 stop
	$0 start
	;;
*)
	echo "usage: $0 start|stop|restart"
esac
