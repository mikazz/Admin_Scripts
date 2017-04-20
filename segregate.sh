#!/bin/bash
# mikazz
# Segregate data to files

cat data.txt | \

while IFS=";" read First Second

if [ $Second -lt 5 ]; then
	echo "$First $Second" >> lessthan5.txt

else
	echo "$First $Second" >> morethan5.txt

fi

done
