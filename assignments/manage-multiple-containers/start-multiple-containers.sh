#!/bin/bash
# Script to start an nginx, mysql and httpd containers
docker container run -d --name webserver -p 8080:80 nginx
docker container run -d --name db -p 3306:3306 -e MYSQL_RANDOM_ROOT_PASSWORD=true mysql
docker container run -d --name proxy -p 80:80 httpd