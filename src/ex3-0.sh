#!/bin/bash

if ! grep -q 'MYENV="Hello Shell"' ~/.bashrc; then
    echo 'export MYENV="Hello Shell"' >> ~/.bashrc
    echo ".bashrc에 MYENV 환경변수가 등록되었습니다."
fi

export MYENV="Hello Shell"
echo "등록된 MYENV 값: $MYENV"

unset MYENV
echo "해제 후 MYENV 값: '$MYENV'"
