//
//  자연수 뒤집어 배열로 만들기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/7/23.
//

import Foundation

func solution4(_ n:Int64) -> [Int] {
        
    //1. n을 배열로 만듦
    let str = String(n)
    let arr = str.map { String($0) }

    //2. 배열의 reversed()
    let reversed = arr.reversed()
    
    //3. 배열을 Int타입으로 변환
    let filter = reversed.map { Int(String($0))! }
    
    return filter
}
