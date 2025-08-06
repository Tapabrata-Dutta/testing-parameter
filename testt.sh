#!/bin/bash

echo "yeah done."
#create a file
if [ ! -f bikram.txt ]; then
	echo "Yeah we have created"
	touch bikram.txt

else 
	echo "File already exist"
fi

#create a folder
if [ ! -d bikram ]; then 	
	mkdir bikram
	echo "Folder is created"
else 
	echo "Folder is already exist"
fi
echo "Content of bikram.txt"
cat bikram.txt
