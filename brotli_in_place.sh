for FILE_EXT in '*.js' '*.css' '*.html'
do
	find build -type f -path $FILE_EXT | xargs ./brotli -v --
done
