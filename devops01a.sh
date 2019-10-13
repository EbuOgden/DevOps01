#!/bin/bash

echo "*********************************"
echo "*        Volume Information     *"
echo "*********************************"
diskutil list
echo "*********************************"
echo "*         CPU Information       *"
echo "*********************************"
sysctl -a | grep machdep.cpu
echo "*********************************"
echo "*         RAM Information       *"
echo "*********************************"
sysctl hw.memsize
echo "*********************************"
echo "*          MAC Address          *"
echo "*********************************"
ifconfig en1 | awk '/ether/{print $2}'
echo "*********************************"
echo "*          IP Address           *"
echo "*********************************"
ifconfig | grep inet
echo "*********************************"
