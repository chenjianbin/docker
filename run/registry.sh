#!/bin/bash
case $1 in 
"start")
    docker run \
        --name registry-server \
        -d \
        -e SETTINGS_FLAVOR=local \
        -e SEARCH_BACKEND=sqlalchemy \
        -e STORAGE_PATH=/data0/docker/registry \
        -v /data0/docker/registry:/data0/docker/registry \
        -p 127.0.0.1:5000:5000 \
        registry
	;;
"stop")
	docker stop registry
	docker rm registry
	;;
"restart")
	$0 stop
	$0 start
	;;
*)
	echo "usage: $0 start|stop|restart"
esac
