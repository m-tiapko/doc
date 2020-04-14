#!/bin/bash
set -eu
sudo docker build . -t state && sudo docker-compose up -d
sleep 90
sudo docker exec nxs cp nexus-data/admin.password  /startfolder/
#sleep 3
#while true;do
#    sudo docker exec nxs test -f nexus-data/admin.password && cp nexus-data/admin.password /startfolder/
#    if [ -f ./startfolder/admin.password ];then
#	break
#    fi
#    sleep 3
#done
echo "I shared password with nginx"
echo "Nexus has been started"
sudo ./remote.sh
sudo docker exec nxs rm  /nexus-data/admin.password
echo "User has been created!"