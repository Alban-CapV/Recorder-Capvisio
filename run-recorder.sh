docker run -d -it \
    -v "${PWD}\src\:/app:z" \
    -p 1935:1935 \
    --name rtmp-nginx-capvisio shiro/recorder-capvisio:v0.0.2
