# #!/usr/bin/env sh

# export RECORD_STORAGE='$'
# envsubst '${RECORD_STORAGE}' < /etc/nginx/nginx.conf

docker run -t -d \
-v /var/Recoder-Capvisio:/app \
-p 1935:1935 -p 1936:1936 \
--mount type=tmpfs,destination=/tmp