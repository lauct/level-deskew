#!/usr/bin/python

import os, sys
from jianfan import jtof

def renamer(target):
    filter = ['mp3'] #'pdf', 'zip', 'chm', 'rar', 'djvu', 'epub'
    os.chdir(target)
    for entry in os.listdir('.'):
        if os.path.isdir(entry):
            backto = os.getcwd()
            renamer(entry)
            os.chdir(backto) 
        else:
            filename = entry
            list = filename.rsplit(".", 1)
            if len(list) > 1 and list[-1] in filter:
                newfilename = jtof(list[0]) + "." + list[-1]
                os.rename(filename, newfilename)
        
if __name__ == '__main__':    
    if len(sys.argv) > 1:
        renamer(sys.argv[1])
    else:                
        renamer(os.getcwd()+'/.')
