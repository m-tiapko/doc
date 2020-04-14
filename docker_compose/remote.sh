#!/bin/bash

cd ./startfolder
userpasswd=$(cat ./admin.password)
cd ..
curl -u	admin:$userpasswd -X POST --header 'Content-Type: application/json' \
http://127.0.0.1:8081/service/rest/v1/script \
-d @execute.json

curl -u	admin:$userpasswd -X POST --header 'Content-Type: text/plain'	\
http://127.0.0.1:8081/service/rest/v1/script/execute/run

#curl -u admin: -X DELETE http://localhost:8081/service/rest/v1/script/execute
rm ./startfolder/admin.password