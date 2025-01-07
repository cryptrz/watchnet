#!/bin/bash

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


echo "Real time monitoring for $device"

watch -n 0.1 "ip -s link show $device"
