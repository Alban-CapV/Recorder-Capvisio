# READ ME

TUTO : https://www.servermania.com/kb/articles/nginx-rtmp/

OLD PARAM TO RECORD COMMAND AND CONVERT TO MP4: 
    record all;
            record_path /app;
            record_suffix -%H-%M-%d-%m-%y.flv;
            exec_record_done ffmpeg -i $path -c copy /app/$basename.mp4;

