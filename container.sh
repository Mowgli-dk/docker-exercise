#!/bin/bash
set -e
docker build -t docker-exercise .
docker run docker-exercise
