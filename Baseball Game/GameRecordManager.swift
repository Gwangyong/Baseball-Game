//
//  record.swift
//  Baseball Game
//
//  Created by 서광용 on 5/29/25.
//

// 기록 보관
struct GameRecord {
    let tryCount: Int // 게임이 몇 번 만에 성공했는지 담음
    // 다른 값들도 기록할 수 있기에 확장성 생각해서 나눠둠
}

// 기록 관리
final class GameRecordManager {
    private static var records: [GameRecord] = []
    
    static func add(_ record: GameRecord) {
        records.append(record)
    }
    
    static func show() {
        print("< 게임 기록 보기 >")
        if records.isEmpty {
            print("저장된 기록이 없습니다.")
        } else {
            for (index, record) in records.enumerated() {
                print("\(index + 1)번째 게임: 시도 횟수 - \(record.tryCount)")
            }
        }
    }
}
