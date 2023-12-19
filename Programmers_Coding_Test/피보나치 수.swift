//
//  피보나치 수.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/19/23.
//

import Foundation
/**
 피보나치 수는 F(0) = 0, F(1) = 1일 때, 1 이상의 n에 대하여 F(n) = F(n-1) + F(n-2) 가 적용되는 수 입니다.

 F(2) = F(0) + F(1) = 0 + 1 = 1
 F(3) = F(1) + F(2) = 1 + 1 = 2
 F(4) = F(2) + F(3) = 1 + 2 = 3
 F(5) = F(3) + F(4) = 2 + 3 = 5

 2 이상의 n이 입력되었을 때, n번째 피보나치 수를 1234567으로 나눈 나머지를 리턴하는 함수, solution을 완성해 주세요.
 */
//재귀함수로 풀면 안되는 듯. => 시간초과 에러 발생
//func solution37(_ n:Int) -> Int {
//    
//    var result = 0
//    
//    for i in 0..<n - 1 {
//        result = resultBack(i)
//    }
//    
//    return result % 1234567
//}
//
//func resultBack(_ num: Int) -> Int {
//    if num >= 1 {
//        return resultBack(num - 1) + resultBack(num - 2)
//    } else {
//        return 1
//    }
//}

func solution37(_ n:Int) -> Int {
    var result: [Int] = [0, 1]
    guard n > 1 else { return n }
    for num in 2...n {
        result.append((result[num - 2] + result[num - 1]) % 1234567)
    }
    return result.last!
}
