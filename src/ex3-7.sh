#!/bin/bash

folder=$1

if [ ! -d "$folder" ]; then
    mkdir -p "$folder"
fi

cd "$folder"

for i in {0..4}; do
    filename="file${i}.txt"
    subfolder="file${i}"
    
    touch "$filename"
    
    mkdir -p "$subfolder"
    
    # 각 하위 폴더에 파일 심볼릭 링크 작성
    ln -s "../$filename" "$subfolder/$filename"
done
