#!/bin/bash
set -e

docker run -d --name my-nginx nginx
docker ps
docker exec my-nginx ls -l /usr/share/nginx/html
docker logs my-nginx

docker run -d --name my-nginx-2 nginx
docker ps

docker stop my-nginx my-nginx-2
docker rm my-nginx my-nginx-2
docker ps -a
