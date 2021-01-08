#!/bin/bash

docker run -d --name=netdata -p 19999:19999 -v /proc:/host/proc:ro -v /sys:/host/sys:ro -v /var/run/docker.sock:/var/run/docker.sock:ro -v $(pwd)/dashboards/:/usr/share/netdata/web/dashboards/ -e PGID=995 --cap-add SYS_PTRACE --security-opt apparmor=unconfined netdata/netdata
