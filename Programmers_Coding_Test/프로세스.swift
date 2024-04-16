//
//  프로세스.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 4/16/24.
//

import Foundation
/**
 운영체제의 역할 중 하나는 컴퓨터 시스템의 자원을 효율적으로 관리하는 것입니다.
 이 문제에서는 운영체제가 다음 규칙에 따라 프로세스를 관리할 경우 특정 프로세스가 몇 번째로 실행되는지 알아내면 됩니다.
 
 1. 실행 대기 큐(Queue)에서 대기중인 프로세스 하나를 꺼냅니다.
 2. 큐에 대기중인 프로세스 중 우선순위가 더 높은 프로세스가 있다면 방금 꺼낸 프로세스를 다시 큐에 넣습니다.
 3. 만약 그런 프로세스가 없다면 방금 꺼낸 프로세스를 실행합니다.
 3.1 한 번 실행한 프로세스는 다시 큐에 넣지 않고 그대로 종료됩니다.
 예를 들어 프로세스 4개 [A, B, C, D]가 순서대로 실행 대기 큐에 들어있고,
 우선순위가 [2, 1, 3, 2]라면 [C, D, A, B] 순으로 실행하게 됩니다.
 
 현재 실행 대기 큐(Queue)에 있는 프로세스의 중요도가 순서대로 담긴 배열 priorities와,
 몇 번째로 실행되는지 알고싶은 프로세스의 위치를 알려주는 location이 매개변수로 주어질 때,
 해당 프로세스가 몇 번째로 실행되는지 return 하도록 solution 함수를 작성해주세요.
 */

func solution70(_ priorities:[Int], _ location:Int) -> Int {
    
    var queue: [(Int, Int)] = []
    var result = 0
    var count = 0
    
    // 큐에 (우선순위, 위치) 형태로 데이터를 넣기
    for (index, priority) in priorities.enumerated() {
        queue.append((priority, index))
    }
    
    while !queue.isEmpty {
        // 큐의 첫번째 current에 저장 > 삭제
        let current = queue.removeFirst()
        // 우선 순위값 제일 큰 거 찾기
        let maxPriority = queue.map { $0.0 }.max() ?? 0
        
        // current의 우선순위가 max보다 작으면 큐에 담기
        // 아니면 count를 1 올리고 location 값과 비교
        if current.0 < maxPriority {
            queue.append(current)
        } else {
            count += 1
            if current.1 == location {
                result = count
                break
            }
        }
    }
    return result
}
