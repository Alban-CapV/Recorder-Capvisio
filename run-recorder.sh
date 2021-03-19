#!/bin/bash

docker run -d -it \
    -v "${pwd}/src/:/app:z" \
    -p 1935:1935 \
    --name rtmp-nginx-capvisio shiro/recorder-capvisio:v0.0.2
