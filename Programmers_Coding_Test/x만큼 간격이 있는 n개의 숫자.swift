//
//  x만큼 간격이 있는 n개의 숫자.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/7/23.
//

import Foundation

/**
 함수 solution은 정수 x와 자연수 n을 입력 받아, 
 x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다.
 */
func solution5(_ x:Int, _ n:Int) -> [Int64] {
    
    var result: Int64 = 0
    var arr: [Int64] = []
    
    for _ in 1...n {
        result += Int64(x)
        arr.append(result)
    }
    print(arr)
    
    return arr
}
