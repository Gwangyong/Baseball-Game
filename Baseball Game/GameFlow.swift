//
//  GameFlow.swift
//  Baseball Game
//
//  Created by 서광용 on 5/29/25.
//

final class GameFlow {
    
    // MARK: - 메뉴 목록부터 시작
    func start() {
        // 첫 방문이면 환영 인사
        // 첫 클리어 이후라면, 다른 인삿말 띄우도록
        while true {
            print("""
            원하시는 번호를 입력해주세요.
            1. 게임 시작하기  2. 게임 기록 보기  3. 종료하기
            """)
            let menu = InputManager.getMenuSelection()
            
            switch menu {
            case 1:
                run()
            case 2:
                print("기록 보기 구현 예정")
            case 3:
                print("게임을 종료합니다.")
                return
            default:
                print("잘못된 입력입니다.")
            }
        }
    }
    
    // MARK: - 게임 실행
    func run() {
        print("게임이 시작되었습니다. 3자리 숫자를 입력해주세요.")
        let answer = GameLogic.makeAnswer() // 정답 값

        while true {
            let input = InputManager.getInput() // 유저 입력 값
            let result = GameLogic.compareAnswer(answer, input) // 결과 판정
            GameLogic.printResult(strike: result.strike, ball: result.ball) // 결과값 출력
            
            if result.strike == 3 {
                print("정답입니다! 게임을 종료하고 메뉴로 돌아갑니다.")
                return
            }
        }
    }
}
