//
//  정수 내림차순으로 배치하기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/9/23.
//

import Foundation
/**
 함수 solution은 정수 n을 매개변수로 입력받습니다.
 n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.
 */
func solution7(_ n:Int64) -> Int64 {
    
    return Int64(String(String(n).sorted(by: { $0 > $1 })))!
    
}
