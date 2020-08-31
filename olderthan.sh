#!/bin/bash

folder=/tmp

echo This procedure will delete folder and files older N days. 
echo 
echo ==================================================================
echo 
while true; do
	read -p "Please insert the value in numbers "  valuedays
    case $valuedays in
         [123456789]* ) find $folder -mtime +$oldInDays -print;
		       break;;
	 * ) echo "Please please numbers based in days back to be deleted";;
    esac
done
echo
echo ==================================================================
echo Warning!!! Warning!!! Warning!!! Warning!! Warning!!! Warning!!! 
echo "      All files and folder listed above will be deleted"        
echo ==================================================================
while true; do
	read -p "Are you agreed y/n? "  yn
    case $yn in
        [Yy]* )#find $folder -mtime +$oldInDays -exec rm -rf {} \;
	        echo	
  	        echo All file and folder has been successfully deleted.; 
	        break;;
        [Nn]* ) exit;;
	* ) echo "Please answer y for yes or n for no.";;
    esac
done
