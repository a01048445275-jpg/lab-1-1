#!/bin/bash
echo 'export MYENV="Hello Shell"' >> ~/.bashrc
source ~/.bashrc

echo "등록된 MYENV 값: $MYENV"

unset MYENV
echo "해제 후 MYENV 값: $MYENV"
