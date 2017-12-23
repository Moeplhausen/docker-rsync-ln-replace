#!/bin/sh
while inotifywait -e modify /media/source; do
        rsync -r -L /media/source/ /media/dest
done
