//
//  가운데 글자 가져오기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/21/23.
//

import Foundation

/**
 단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
 */

func solution18(_ s:String) -> String {
    
//    var result: String = ""
//    
//    if s.count % 2 == 0 {
//        result = String(Array(s)[s.count / 2 - 1]) + String(Array(s)[s.count / 2])
//    } else {
//        result = String(Array(s)[s.count / 2])
//    }
//    
//    return result
    return s.count % 2 == 0 ? String(Array(s)[s.count / 2 - 1]) + String(Array(s)[s.count / 2]) : String(Array(s)[s.count / 2])
}
