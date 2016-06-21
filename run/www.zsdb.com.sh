#!/bin/bash
NAME=www.zsdb.com
case $1 in 
"start")
	docker run -d -p 8001:80 -v /data0/web/$NAME:/data0/web/default -v /data0/logs/docker/$NAME:/data0/logs/ --name $NAME registry.miguan.com/$NAME
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
