#!/bin/sh

##################################################################
# rarcomics.sh                                                   #
# Author: Lauct                                                  #
# Purpose: Batch adjust color level for grayscale tiff			 #
# Date: 2014.02.16                                               #
##################################################################

# DirName=$(ls -l | grep ^d | awk '{print $9}')
# for d in $DirName
dir="gmconverted"
echo $dir
mkdir -p $dir

echo "\033[1;36;40m###################################\033[0m\n"
echo "\033[1;31;40m         Deskewing files to $dir   \033[0m\n" #tip something
echo "\033[1;36;40m###################################\033[0m\n"

for file in *.tif
    do
		convert  -verbose $file +deskew -compress lzw $dir/deskewed_$file
    done
exit 0