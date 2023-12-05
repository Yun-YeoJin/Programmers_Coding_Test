//
//  JadenCase 문자열 만들기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/5/23.
//

import Foundation
/**
 JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 
 단, 첫 문자가 알파벳이 아닐 때에는 이어지는 알파벳은 소문자로 쓰면 됩니다.
 문자열 s가 주어졌을 때, s를 JadenCase로 바꾼 문자열을 리턴하는 함수, solution을 완성해주세요.
 */
func solution27(_ s:String) -> String {
    
    let words = Array(s)
    var isBlank = true //공백이 연속으로 있을 수도 있어서!
    var result: String = ""
    
    for i in words {
        result += (isBlank ? i.uppercased() : i.lowercased())
        isBlank = (i == " ")
    }
    
    return result
}
