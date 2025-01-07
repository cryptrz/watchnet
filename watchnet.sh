#!/bin/bash

if [ $(id -u) -ne 0  ]; then
        echo "Please execute as root"
        exit 1
fi

echo -e "
$(nmcli device status)

***************************************
Enter the device that you want to monitor? "

read device

echo "Real time monitoring for $device"

watch -n 0.1 "ip -s link show $device"
