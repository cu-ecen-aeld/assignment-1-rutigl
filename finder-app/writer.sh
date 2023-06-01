#!/bin/sh
# Author: Margarita Glushkin

if [ "$#" -lt 2 ]; then
    echo "Error: wrong number of arguments"
    echo "usage: ./writer.sh file_path string"
    return 1
fi

fullpath=$1
dir="$(dirname "${fullpath}")"
file="$(basename "${fullpath}")"

if [ ! -d "$dir" ]; then
    mkdir -p $dir
fi

cd $dir

if [ -f "$file" ]; then
    rm -f $file
fi

echo "$2" > $file