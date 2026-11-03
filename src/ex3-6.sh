#!/bin/bash

dirname=$1

if [ ! -d "$dirname" ]; then
    mkdir -p "$dirname"
fi

touch file.txt file1.txt file2.txt file3.txt file4.txt

tar -cvf "$dirname.tar" file.txt file1.txt file2.txt file3.txt file4.txt

subfolder="$dirname/$dirname"
mkdir -p "$subfolder"
tar -xvf "$dirname.tar" -C "$subfolder"
