FROM tiangolo/nginx-rtmp

EXPOSE 1935/tcp
EXPOSE 1935/udp

COPY nginx.conf /etc/nginx/nginx.conf

RUN cd /



