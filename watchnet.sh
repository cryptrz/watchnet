#!/bin/bash

clear

if [ $# -ne 1  ]; then
       echo -e "
       $(nmcli device status)

       ***************************************
       Enter the device that you want to monitor? "

       read device
elif [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "Usage: $0 <interface>"
    exit 1
else
        device=$1
fi

clear
echo "Real time monitoring for $device)"
sleep 1
echo "(Press CTRL + C to stop the program"
sleep 2

watch -n 0.1 "ip -s link show $device"
