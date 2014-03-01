#!/bin/sh

##################################################################
# level+deskew.sh                                                   #
# Author: Lauct                                                  #
# Purpose: Batch adjust color level for grayscale pics			 #
# Date: 2014.02.16                                               #
##################################################################

# for d in $DirName
dir="_converted_"
echo $dir
mkdir -p $dir

echo "\033[1;36;40m###################################\033[0m\n"
echo "\033[1;31;40m Adjust contrast and deskewing files to $dir \033[0m\n" #tip something
echo "\033[1;36;40m###################################\033[0m\n"

for file in *.jpg # you can change file type here
    do
		convert -verbose $file -level 15% -quality 85% -alpha off +deskew $dir/$file.jpg
    done
exit 0