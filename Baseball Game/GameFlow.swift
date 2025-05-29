//
//  GameFlow.swift
//  Baseball Game
//
//  Created by 서광용 on 5/29/25.
//

final class GameFlow {
    
    // MARK: - 전체 흐름 시작
    func start() {
        let answer = GameLogic.makeAnswer() // 정답 값

        while true {
            let userInput = InputManager.getInput() // 유저 입력 값
            let result = GameLogic.compareAnswer(answer, userInput) // 결과 판정

            GameLogic.printResult(strike: result.strike, ball: result.ball) // 결과값 출력
            if result.strike == 3 {
                break
            }
        }
    }
}
