#!/bin/bash


for x in `cat libstuff |grep dis`
do 
    grep $x rpi > /dev/null 2>&1
    if [[ $? -eq 0 ]]
    then
        #echo "$x already in file.."
	continue
    fi
    printf "\t/dis/lib/$x\n";
done

for x in `cat lib-usbstuff |grep dis`
do 
    grep $x rpi > /dev/null 2>&1
    if [[ $? -eq 0 ]]
    then
        #echo "$x already in file.."
	continue
    fi
    printf "\t/dis/lib/usb/$x\n";
done
