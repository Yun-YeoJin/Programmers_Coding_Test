//
//  약수의 갯수와 덧셈.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/23/23.
//

import Foundation
/**
 두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서,
 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
 */
func solution21(_ left:Int, _ right:Int) -> Int {
    
    var result = 0
    
    for i in left...right {
        
        var count = 0
        
        for j in 1...i {
            if i % j == 0 {
                count += 1 //약수의 갯수
            }
        }
        
        if count % 2 == 0 {
            result += i //약수의 갯수가 짝수
        } else {
            result -= i //약수의 갯수가 홀수
        }
    }
    
    return result
}
