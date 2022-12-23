#!/bin/sh

docker_run="docker run"
docker_build="docker build"


build_image="docker_build"
sh -c "build_image . -t kafka_zookeeper"

run_image="$docker_run"
sh -c "run_image -p 2181:2181 -p 9092:9092 -e ADVERTISED_HOST=localhost kafka_zookeeper"