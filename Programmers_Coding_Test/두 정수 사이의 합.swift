//
//  두 정수 사이의 합.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/18/23.
//

import Foundation
/**
 두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
 예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.
 */

func solution17(_ a:Int, _ b:Int) -> Int64 {
    
    var result: Int64 = 0
    
    if a > b {
        for i in b...a {
            result += Int64(i)
        }
    } else {
        for i in a...b {
           result += Int64(i)
        }
    }
    
    return result
}
