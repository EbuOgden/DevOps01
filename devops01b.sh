#!/bin/bash

if [ "$1" = "-volumes" ]
then
    echo "*********************************"
    echo "*        Volume Information     *"
    echo "*********************************"
    diskutil list
elif [ "$1" = "-cpu" ]
then
    echo "*********************************"
    echo "*         CPU Information       *"
    echo "*********************************"
    sysctl -a | grep machdep.cpu
elif [ "$1" = "-ram" ]
then
    echo "*********************************"
    echo "*         RAM Information       *"
    echo "*********************************"
    sysctl hw.memsize
elif [ "$1" = "-network" ]
then
    echo "*********************************"
    echo "*          MAC Address          *"
    echo "*********************************"
    ifconfig en1 | awk '/ether/{print $2}'
    echo "*********************************"
    echo "*          IP Address           *"
    echo "*********************************"
    ifconfig | grep inet
    echo "*********************************"
elif [ "$1" = "-all" ]
then
    echo "*********************************"
    echo "*        Volume Information     *"
    echo "*********************************"
    diskutil list
    echo "*********************************"
    echo "*         CPU Information       *"
    echo "*********************************"
    sysctl -a | grep machdep.cpu
    echo "*********************************"
    echo "*          MAC Address          *"
    echo "*********************************"
    ifconfig en1 | awk '/ether/{print $2}'
    echo "*********************************"
    echo "*          IP Address           *"
    echo "*********************************"
    ifconfig | grep inet
    echo "*********************************"
else
    echo "Please enter a parameter from the following:"
    echo "-volume for Volume Information"
    echo "-cpu for CPU Information"
    echo "-ram for RAM Information"
    echo "-network for Network Information"
    echo "-all for All Information"
fi








