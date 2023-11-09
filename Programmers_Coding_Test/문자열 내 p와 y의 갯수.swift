//
//  문자열 내 p와 y의 갯수.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/9/23.
//

import Foundation

func solution6(_ s:String) -> Bool {
   
    //문자열을 소문자로 만들기
    let lowercased = s.lowercased()
    
    //소문자로 만든 문자열을 filter > count 하기
    let count_p = lowercased.filter { $0 == "p" }.count
    let count_s = lowercased.filter { $0 == "y" }.count
    
    let isEqual = count_p == count_s
    
    return isEqual
    
}
