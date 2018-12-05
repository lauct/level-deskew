#!/bin/sh

DirName=$(ls -l | grep ^d | awk '{print $9}')
for d in $DirName
    do
    	cd $d
        echo "\033[1;36;40m###################################\033[0m\n"
        echo "\033[1;31;40m         img2pdf * -o $d.pdf\033[0m\n" #tip something
        echo "\033[1;36;40m###################################\033[0m\n" 
        sleep 1
        img2pdf * -o $d.pdf
        cd ..
    done
find . -name "*.pdf" -exec mv {} . ";"    
exit 0

