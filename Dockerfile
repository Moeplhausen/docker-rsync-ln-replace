FROM gliderlabs/alpine:3.4
RUN apk add --no-cache inotify-tools rsync openssh
COPY start.sh /root/
RUN mkdir /media/source /media/dest
ENTRYPOINT ["/bin/sh","/root/start.sh"]
