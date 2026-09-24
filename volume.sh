#!/bin/bash
set -e

docker volume create minvolume

docker run --rm -v minvolume:/data alpine sh -c 'echo "Hej fra en volume!" > /data/besked.txt'

docker run --rm -v minvolume:/data alpine cat /data/besked.txt

! docker run --rm alpine cat /data/besked.txt

docker volume ls

docker volume rm data
