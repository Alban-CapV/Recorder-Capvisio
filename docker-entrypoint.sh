#!/usr/bin/env sh

export RECORD_STORAGE='$'
envsubst '${RECORD_STORAGE}' < /etc/nginx/nginx.conf
