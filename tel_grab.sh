#!/bin/bash
#Telnet Scripting
# Run tel_grab.sh [host] [port] [set_host][resource] 
#
# 2017
#

if [ -z $1 ]; then
        echo -e 'Send HTTP HEAD request via telnet. MUST BE PIPED INTO TELNET.\nusage: ./tel_grab.sh host port set_host resource HTTP version\n eg. ./telgrab.sh www.hackthissite.org 80 hackthissite.org / 1.0 | telnet\n'
else
    echo "open $1 $2"
    sleep 2
    echo "HEAD $4 HTTP/$5"
    echo "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4"
    echo "Host: $3"
    echo
    echo
   sleep 2
fi

exit 0
