#!/bin/bash
# Replace 'enp3s0' with your real ethernet interface name
iface="enp3s0"

state=$(cat /sys/class/net/$iface/operstate)
if [ "$state" = "up" ]; then
    echo "󰈁 Connected"
else
    echo "󰖪 Disconnected"
fi

