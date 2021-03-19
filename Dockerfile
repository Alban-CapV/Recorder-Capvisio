FROM ubuntu:20.04

EXPOSE 1935/tcp
EXPOSE 1935/udp

#TIME ZONE DEFINE FOR ffmpeg
ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV PATH="/usr/local/nginx/sbin:${PATH}"

RUN apt-get update

# App/Plugins to install
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y ffmpeg
RUN apt-get install -y libpcre3
RUN apt-get install -y libpcre3-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y zlib1g-dev

# Nginx and module nginx
RUN git clone https://github.com/sergey-dryabzhinsky/nginx-rtmp-module.git
RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*
RUN wget http://nginx.org/download/nginx-1.18.0.tar.gz
RUN tar -xf nginx-1.18.0.tar.gz 

# Configuration nginx
WORKDIR /nginx-1.18.0
RUN ./configure \
        --prefix=/usr/local/nginx \
        --with-http_ssl_module \
        --add-module=../nginx-rtmp-module
RUN make && make install

# USER 
RUN useradd -r -d /var/cache/nginx/ -s /sbin/nologin -U nginx
RUN mkdir /app
RUN chown nginx /app
RUN chown nginx /usr/local/nginx/logs

# Add nginx.conf for configuration stream
COPY nginx.conf /usr/local/nginx/conf/nginx.conf

USER nginx
# Launch nginx
CMD [ "nginx", "-g", "daemon off;" ]




