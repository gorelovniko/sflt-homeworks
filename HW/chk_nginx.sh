#!/bin/bash

URL="http://localhost"
FILE="/var/www/html/index.html"

if ! curl -s --head  --request GET $URL |grep "200 OK" > /dev/null ; then
    exit 1
fi

if [ ! -f $FILE ]; then
    exit 1
fi

exit 0
