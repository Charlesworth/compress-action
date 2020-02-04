#!/bin/bash

for FILE_EXT in '*.js' '*.css' '*.html'
do
	FILES=`find build -type f -path $FILE_EXT`
	if [ -z "$FILES" ]
	then
		echo "no $FILE_EXT files found"
	else
		echo $FILES | xargs ./brotli -v --
	fi
done
