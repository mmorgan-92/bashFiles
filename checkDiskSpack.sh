#!/bin/bash

MAX=95

echo "would you like to get an email when partition disk space is greater than 95%, yes or no"

read answer
if [$answer == "yes"] || [$answer == "Yes"]; then
    echo "please enter your email"
    read em
    PART=sdal
    USE=`df -h | grep $PART | awk '{ print $5 }' | cut -d'%' -fl`
    if [ $USE -gt $MAX ]; then
        echo "Precent used: $USE" | MAIL -s "running out of disk space" $em
    fi

else
    echo "fine we won't send you an alert"
fi

