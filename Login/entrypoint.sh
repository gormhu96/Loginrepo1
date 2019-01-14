#!/bin/bash

while ! mysqladmin ping -h "mysql-login" --silent;
    do sleep 1
done

java -jar /data/ApiLogin-0.0.1-SNAPSHOT.jar
