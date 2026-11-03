#!/bin/bash

echo "x 값 2개를 입력하세요:"
read x1 x2

y1=$(echo "scale=2; 0.5 * $x1 * $x1" | bc)
y2=$(echo "scale=2; 0.5 * $x2 * $x2" | bc)

echo "x = $x1 일 때 y = $y1"
echo "x = $x2 일 때 y = $y2"
