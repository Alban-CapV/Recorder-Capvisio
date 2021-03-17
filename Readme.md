# Read ME

Run doker with command : docker run -d -p 1935:1935 --name nginx-rtmp-capvisio recorder-capvisio
Utilisation d'un volume avec -v 

docker run -v C:/PROJETS/Projects_GIT/Recorder/src/recordings -d -p 1935:1935 --name nginx-rtmp-capvisio recorder-capvisio

new command :
``` docker run -d -it -v "${PWD}\src\:/app:z" -p 1935:1935 --name rtmp-nginx-capvisio shiro/recorder-capvisio:v0.0.2 ```