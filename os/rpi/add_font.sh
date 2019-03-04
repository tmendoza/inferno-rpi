#!/bin/bash


for x in `cat pelm-fontstuff `
do 
    grep $x rpi > /dev/null 2>&1
    if [[ $? -eq 0 ]]
    then
        #echo "$x already in file.."
	continue
    fi
    printf "\t/font/pelm/$x\n";
done

for x in `cat misc-fontstuff`
do 
    grep $x rpi > /dev/null 2>&1
    if [[ $? -eq 0 ]]
    then
        #echo "$x already in file.."
	continue
    fi
    printf "\t/font/misc/$x\n";
done
