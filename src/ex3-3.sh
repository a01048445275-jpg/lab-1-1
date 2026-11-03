#!/bin/bash

scores=("$@")
if [ ${#scores[@]} -lt 2 ]; then
    echo "2개 이상의 점수를 공백으로 구분하여 입력하세요:"
    read -a scores
fi

sum=0
count=${#scores[@]}

for i in "${!scores[@]}"; do
    score=${scores[$i]}
    if [ $score -ge 90 ]; then
        grade="A"
    else
        grade="B"
    fi
    echo "과목 $((i+1)) 점수: $score -> 등급: $grade"
    sum=$((sum + score))
done

avg=$(echo "scale=2; $sum / $count" | bc)
is_a=$(echo "$avg >= 90" | bc)

if [ $is_a -eq 1 ]; then
    avg_grade="A"
else
    avg_grade="B"
fi

echo "평균 점수: $avg"
echo "평균 등급: $avg_grade"
