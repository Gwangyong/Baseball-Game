//
//  InputManager.swift
//  Baseball Game
//
//  Created by 서광용 on 5/29/25.
//

final class InputManager {
    // MARK: - 정답 입력
    static func getInput() -> [Int] {
        while true {
            let input = readLine() ?? "" // String 타입
            let validated = validateInput(input)
            
            if let numbers = validated {
                return numbers
            }
        }
    }
    
    // MARK: - 입력 검증
    static func validateInput(_ input: String) -> [Int]? {
        let inputNumbers = input.compactMap { Int(String($0)) }
        
        guard inputNumbers.count == 3 else { // 세 자리 숫자가 아닐 경우
            print("입력하신 숫자가 세 자리 숫자가 아닙니다. 세 자리 숫자를 입력해주세요.")
            return nil // return이 nil이면, getInput() 함수의 if let을 통과 못하기에 while true 루프 계속됨
        }
        
        guard Set(inputNumbers).count == 3 else { // 중복된 값이 있을 경우
            print("중복된 숫자가 있습니다. 중복되지 않은 숫자를 입력해주세요.")
            return nil
        }
        return inputNumbers
    }
    
    // MARK: - 메뉴 값 입력
    static func getMenuSelection() -> Int {
        let getMenuNumber = readLine()!
        return Int(getMenuNumber)!
        // 예외처리 만들 예정
    }
}
