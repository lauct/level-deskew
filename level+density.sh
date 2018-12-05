#!/bin/sh

##################################################################
# level.sh                                                #
# Author: Lauct                                                  #
# Purpose: Batch adjust color level for pics					 #
# Date: 2014.02.16                                               #
##################################################################

# for d in $DirName
dir="_converted_"

mkdir -p $dir

if [[ -z $1 ]]; then
	
	echo "\033[1;36;40m請輸入欲處理的圖檔副檔名\033[0m\n";
	exit 0;
	
	else 
		echo "\033[1;36;40m處理過的圖檔將輸出至 $dir 目錄下\n"
		echo "\033[1;36;40m###################################\033[0m\n";
		echo "\033[1;31;40mAdjusting contrast files to $dir \033[0m\n";
		echo "\033[1;36;40m###################################\033[0m\n";
		
		for file in *.$1 # you can change file type here
		    do
				convert -verbose $file -level 20% -density 600 -quality 50% -alpha off $dir/$file.jpg
		done
fi
	
exit 8
