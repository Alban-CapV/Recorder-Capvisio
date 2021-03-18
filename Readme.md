# Read ME

Run doker with command : docker run -d -p 1935:1935 --name nginx-rtmp-capvisio recorder-capvisio
Utilisation d'un volume avec -v 

docker run -v C:/PROJETS/Projects_GIT/Recorder/src/recordings -d -p 1935:1935 --name nginx-rtmp-capvisio recorder-capvisio

new command :
``` docker run -d -it -v "${PWD}\src\:/app:z" -p 1935:1935 --name rtmp-nginx-capvisio shiro/recorder-capvisio:v0.0.2 ```

Command Linux : 
```
docker run -t -d \
-e BOOKING_CENTRAL_API \
-e BOOKING_PHP \
-v /logs:/logs -v /var/www/html/videos/storage:/var/www/html/videos/storage \
-p 20000:10000 -p 20001:10001 -p 1935:1935 -p 1936:1936 -p 10000:82 -p 20022:22 \
--mount type=tmpfs,destination=/tmp \
--name booking_recorder -i booking_recorder2 /config.sh 
```