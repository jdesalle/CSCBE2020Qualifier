#!/bin/bash

not_finish=true
while [ $not_finish == true ]
do
		  file="$(file ./flag)"
	if [[ $file == *"bzip2"* ]]; then 
			  echo "bzip2"
			  mv flag flag.bz2
			  bzip2 -d flag.bz2
	elif [[ $file == *"gzip"* ]]; then
			  echo "gzip"
			  mv flag flag.gz
			  gzip -d flag.gz
	else 
			  not_finish=false
			  echo "format not encoded"
			  echo $file
	fi
done

