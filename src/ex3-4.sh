#!/bin/bash

scores=()

while true; do
    echo "---------------------------"
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급 (GPA) 변환"
    echo "5) 종료"
    echo "---------------------------"
    read -p "선택 (1-5): " choice

    case $choice in
        1)
            read -p "성적을 입력하세요 (0~100): " score
            scores+=($score)
            echo "성적이 추가되었습니다."
            ;;
        2)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                echo "입력된 모든 점수: ${scores[*]}"
            fi
            ;;
        3)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                sum=0
                for s in "${scores[@]}"; do
                    sum=$((sum + s))
                done
                avg=$(echo "scale=2; $sum / ${#scores[@]}" | bc)
                echo "평균 점수: $avg"
            fi
            ;;
        4)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수가 없습니다."
            else
                sum=0
                for s in "${scores[@]}"; do
                    sum=$((sum + s))
                done
                avg=$(echo "scale=2; $sum / ${#scores[@]}" | bc)
                is_a=$(echo "$avg >= 90" | bc)
                if [ $is_a -eq 1 ]; then
                    gpa="A"
                else
                    gpa="B"
                fi
                echo "평균 등급 (GPA): $gpa"
            fi
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 입력입니다."
            ;;
    esac
    echo ""
done
