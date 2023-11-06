//
//  정수 제곱근 판별.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/6/23.
//

import Foundation

/**
 임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
 n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.
 */
func solution3(_ n:Int64) -> Int64 {
    
    //1. n의 sqrt값을 선언(제곱근 함수)
    let sqrt = Int64(sqrt(Double(n)))
    
    //2. sqrt * sqrt 가 n이랑 같으면 -> n이 양의 정수 x의 제곱이라는 뜻
    return sqrt * sqrt == n ? (sqrt + 1) * (sqrt + 1) : -1
}


