#!/bin/bash
NAME=jenkins
case $1 in 
"start")
	docker run -d -p 8080:8080 -v /data0/$NAME:/var/jenkins_home --name $NAME jenkins/$NAME
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
