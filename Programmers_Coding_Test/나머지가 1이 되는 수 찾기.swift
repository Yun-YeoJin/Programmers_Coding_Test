//
//  나머지가 1이 되는 수 찾기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/5/23.
//

import Foundation

func solution2(_ n:Int) -> Int {
    
    for i in 2...n {
        if n % i == 1 {
            return i
        }
    }
    return 1
}
