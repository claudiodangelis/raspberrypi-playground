#!/bin/bash
exec 1>/dev/null 2>/dev/null
# Set PLAYLIST  variable accordingly to your preference.
# Default value is deliciousagony web radio, I love it
PLAYLIST=http://208.53.158.48:9564/listen.pls
mplayer -playlist $PLAYLIST > /dev/null & echo $!>/var/run/radioberry.pid

