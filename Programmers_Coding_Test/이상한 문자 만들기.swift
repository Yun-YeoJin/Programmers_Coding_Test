//
//  이상한 문자 만들기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/12/23.
//

import Foundation
/**
 문자열 s는 한 개 이상의 단어로 구성되어 있습니다. 각 단어는 하나 이상의 공백문자로 구분되어 있습니다.
 각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴하는 함수, solution을 완성하세요.
 
         s                  return
 "try hello world"    "TrY HeLlO WoRlD"
 */
func solution31(_ s:String) -> String {
    var str = s.components(separatedBy: " ")
    
    for i in 0..<str.count {
        var temp = ""
        for (i, char) in str[i].enumerated() {
            if i % 2 == 0 {
                temp += char.uppercased()
            } else {
                temp += char.lowercased()
            }
        }
        str[i] = temp
    }
    
    return str.joined(separator: " ")
}
 
