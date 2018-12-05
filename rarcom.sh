#!/bin/sh

##################################################################
# rarcomics.sh                                                   #
# Author: Lauct                                                  #
# Purpose: Batch compressing comics directories to RAR archive   #
# Date: 2012.07.11                                               #
##################################################################

DirName=$(ls -l | grep ^d | awk '{print $9}')
for d in $DirName
    do
        echo "\033[1;36;40m###################################\033[0m\n"
        echo "\033[1;31;40m         Compressing $d/\033[0m\n" #tip something
        echo "\033[1;36;40m###################################\033[0m\n" 
        sleep 1
        rar a -m0 $d.rar -r $d/
    done
exit 0

