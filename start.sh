#!/bin/sh
rsync -r -L /media/source/ /media/dest
while inotifywait -e modify /media/source; do
        rsync -r -L /media/source/ /media/dest
done
