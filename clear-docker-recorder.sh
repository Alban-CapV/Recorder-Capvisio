#!/bin/bash

docker kill rtmp-nginx-capvisio
docker rm rtmp-nginx-capvisio
docker image rm rtmp-nginx-capvisio shiro/recorder-capvisio:v0.0.2

