//
//  음양 더하기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/14/23.
//

import Foundation
/**
 어떤 정수들이 있습니다. 이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 Boolean 배열 signs가 매개변수로 주어집니다.
 실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
 - false = 음수
 - true = 양수
 */

func solution14(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    
    var result: Int = 0
    
    for i in 0..<signs.count {
        result += signs[i] == true ? absolutes[i] : -absolutes[i]
    }
    
    return result
}
