#!/bin/bash
set -e

docker run -d --name my-nginx nginx
docker ps
