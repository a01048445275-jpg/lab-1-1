#!/bin/bash

while true
do
    echo "======================================"
    echo "       리눅스 시스템 상태 확인"
    echo "======================================"
    echo "1) 사용자 정보"
    echo "2) GPU 또는 CPU 사용률 확인"
    echo "3) 메모리 사용량 확인"
    echo "4) 디스크 사용량 확인"
    echo "5) 종료"
    echo "======================================"
    read -p "원하는 메뉴 번호를 입력하세요 (1-5): " choice
    echo ""

    case $choice in
        1)
            echo "[1] 사용자 정보"
            echo "현재 사용자: $(whoami)"
            id
            echo "--- 현재 로그인된 사용자 목록 ---"
            who
            ;;
        2)
            echo "[2] GPU 또는 CPU 사용률 확인"
            if command -v nvidia-smi >/dev/null 2>&1; then
                nvidia-smi
            else
                echo "GPU(nvidia-smi)가 감지되지 않아 CPU 사용률을 출력합니다."
                top -b -n 1 | head -n 15
            fi
            ;;
        3)
            echo "[3] 메모리 사용량 확인"
            free -h
            ;;
        4)
            echo "[4] 디스크 사용량 확인"
            echo "--- 전체 파일 시스템 사용량 (df) ---"
            df -h
            echo ""
            echo "--- 현재 디렉토리 하위 용량 (du) ---"
            du -sh * 2>/dev/null
            ;;
        5)
            echo "프로그램을 종료합니다."
            break
            ;;
        *)
            echo "잘못된 번호입니다. 1에서 5 사이의 숫자를 입력해 주세요."
            ;;
    esac
    echo ""
done
