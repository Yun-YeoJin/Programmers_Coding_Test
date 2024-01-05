//
//  두 개 뽑아서 더하기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 1/5/24.
//

import Foundation
/**
 정수 배열 numbers가 주어집니다. numbers에서 서로 다른 인덱스에 있는 두 개의 수를 뽑아 더해서 만들 수 있는 모든 수를 배열에 오름차순으로 담아 return 하도록 solution 함수를 완성해주세요.
 */

func solution47(_ numbers:[Int]) -> [Int] {
    
    //중복 제거를 위해 Set사용
    var result: Set<Int> = []
    
    for i in 0 ..< numbers.count - 1 {
        for j in i + 1 ..< numbers.count {
            result.insert(numbers[i] + numbers[j])
        }
    }
    
    return result.sorted()
}
