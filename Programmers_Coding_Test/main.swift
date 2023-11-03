//
//  main.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/3/23.
//

import Foundation

func solution(_ num:Int) -> String {
    
    let isEven = num % 2
    
    return isEven == 0 ? "Even" : "Odd"
    
}

solution(1234)
