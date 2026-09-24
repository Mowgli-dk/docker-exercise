#!/bin/bash
set -e
docker rm -f boss 2>/dev/null || true

docker build -t minside .
docker volume create bossvolume

docker run -d --name boss -p 8080:8000 -v bossvolume:/app/data minside
sleep 2

docker exec boss sh -c 'echo "Hej fra boss-containeren!" > /app/data/boss.txt'
curl -f localhost:8080/data/boss.txt

docker rm -f boss

docker run --rm -v bossvolume:/app/data minside cat /app/data/boss.txt

docker volume rm bossvolume
