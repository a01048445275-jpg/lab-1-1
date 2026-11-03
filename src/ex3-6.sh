#!/bin/bash

dirname=$1

# 1. 입력받은 이름으로 폴더가 없으면 생성
if [ ! -d "$dirname" ]; then
    mkdir -p "$dirname"
fi

# 2. 5개 파일 생성
touch file.txt file1.txt file2.txt file3.txt file4.txt

# 3. 파일 압축
tar -cvf "$dirname.tar" file.txt file1.txt file2.txt file3.txt file4.txt

# 4. 하위 폴더 생성 후 압축 해제
subfolder="$dirname/$dirname"
mkdir -p "$subfolder"
tar -xvf "$dirname.tar" -C "$subfolder"
