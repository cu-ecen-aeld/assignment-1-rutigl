#!/bin/sh
# Author: Margarita Glushkin

if [ "$#" -lt 2 ]; then
    echo "Error: wrong number of arguments"
    echo "usage: ./finder.sh directory_path find_string"
    return 1
fi

if [ ! -d "$1" ]; then
    echo "Directory $1 does not exist."
    return 1
fi

cd $1
filecount=$(find -type f | wc -l)
linecount=$(grep -r $2 | wc -l)
echo "The number of files are $filecount and the number of matching lines are $linecount"