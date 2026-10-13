def welcome_user():
    """사용자의 이름을 입력받아 환영 인사를 출력하는 함수"""
    print("환영합니다! 프로그램이 실행되었습니다.")
    
    # 사용자에게 이름을 입력받습니다.
    user_name = input("사용자 이름을 입력해주세요: ")
    
    # 입력받은 이름이 비어있지 않은지 확인합니다.
    if user_name:
        # 입력받은 이름을 사용하여 환영 메시지를 출력합니다.
        print(f"\n반갑습니다, {user_name}님! Github 실습을 시작합니다.")
    else:
        print("\n이름이 입력되지 않았습니다. 다시 시도해주세요.")

# 메인 실행 부분
if __name__ == "__main__":
    welcome_user()
