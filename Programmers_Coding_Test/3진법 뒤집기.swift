//
//  3진법 뒤집기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/12/23.
//

import Foundation

/**
 자연수 n이 매개변수로 주어집니다. n을 3진법 상에서 앞뒤로 뒤집은 후, 이를 다시 10진법으로 표현한 수를 return 하도록 solution 함수를 완성해주세요.
 
 n (10진법)    n (3진법)    앞뒤 반전(3진법)    10진법으로 표현
    45          1200          0021             7
 
 따라서 7을 return 해야 합니다.
 */
func solution30(_ n:Int) -> Int {
    //(value:, radix:) : n진법으로 변환하는 클래스
    var str: String = String(n, radix: 3)
    let reversedStr = String(str.reversed())
    
    return Int(reversedStr, radix: 3)!
}
