#!/bin/bash

docker run --name mysql-login -d --restart unless-stopped -v /home/guillermo/proyecto1/mysql-login/conf/my.cnf:/etc/mysql/my.cnf -v /home/guillermo/proyecto1/mysql-login/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 mysql

docker run --name login -d --link mysql-login --restart unless-stopped login-1

docker run --name nginx-proxy --restart unless-stopped -p 80:80 -v /home/guillermo/proyecto1/nginx-proxy/conf.d:/etc/nginx/conf.d --link login -d nginx



