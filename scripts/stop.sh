#!/bin/bash

docker stop nginx-proxy login-service mysql-login && \
docker rm nginx-proxy login-service mysql-login
