#!/bin/bash

while ! mysqladmin ping -h "mysql-login" --silent;
    do sleep 1
done

mysql -u root -p123456 -h mysql-login < /data/data.sql

java -jar /data/ApiLogin-0.0.1-SNAPSHOT.jar
