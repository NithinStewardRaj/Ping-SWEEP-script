#!/bin/bash

if [ "$1" == "" ]
then
echo "You Forgot to enter your ip address:("
echo "Syntax ==> ./ipsweep.sh (your ip to scan)"
echo "example: ./ipsweep.sh 192.168.4"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & 
done
fi
