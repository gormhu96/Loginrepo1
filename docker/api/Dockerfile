FROM openjdk:8

RUN apt-get update -y && \
    apt-get -y install mysql-client && \
    mkdir -p /data

COPY /target/ApiLogin-0.0.1-SNAPSHOT.jar /data/ApiLogin-0.0.1-SNAPSHOT.jar
COPY user-data/data.sql /data/data.sql
COPY /entrypoint.sh /data/entrypoint.sh

ENTRYPOINT ["/bin/bash","/data/entrypoint.sh"]
