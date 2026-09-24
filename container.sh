#!/bin/bash
set -e

docker run -d --name my-nginx nginx
docker ps
docker exec my-nginx ls -l /usr/share/nginx/html
