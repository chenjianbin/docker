#!/bin/bash
case $1 in 
"start")
	docker run -d -p 50000:22 -v /data0/python/:/data0/python/ --name python3 registry.miguan.com/python3
	;;
"stop")
	docker stop python3
	docker rm python3
	;;
"restart")
	$0 stop
	$0 start
	;;
*)
	echo "usage: $0 start|stop|restart"
esac
