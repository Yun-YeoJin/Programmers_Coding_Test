//
//  이중우선순위큐.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 4/29/24.
//

import Foundation
/**
 이중 우선순위 큐는 다음 연산을 할 수 있는 자료구조를 말합니다.
 
 \  명령어  \  수신 탑(높이)              \
 \ I 숫자  \  큐에 주어진 숫자를 삽입합니다.  \
 \ D 1    \ 큐에서 최댓값을 삭제합니다.     \
 \ D -1   \ 큐에서 최솟값을 삭제합니다.     \
 
 이중 우선순위 큐가 할 연산 operations가 매개변수로 주어질 때, 모든 연산을 처리한 후 큐가 비어있으면 [0,0] 비어있지 않으면 [최댓값, 최솟값]을 return 하도록 solution 함수를 구현해주세요.
 */
func solution73(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    
    for i in operations {
        let command = i.split(separator: " ").map { String($0) }
        
        if command[0] == "I" {
            queue.append(Int(command[1]) ?? 0)
        } else if command[0] == "D" && !queue.isEmpty {
            if command[1].contains("-") {
                queue.sort(by: >)
                queue.removeLast()
            } else {
                queue.sort()
                queue.removeLast()
            }
        }
    }
    
    return queue.isEmpty ? [0, 0] : [queue.max() ?? 0, queue.min() ?? 0]
}
