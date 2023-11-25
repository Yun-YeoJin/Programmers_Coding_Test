//
//  문자열 다루기 기본.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/25/23.
//

import Foundation
/**
 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요.
 예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.
 */
func solution23(_ s:String) -> Bool {

    let result = Array(s)
    
    if result.count == 4 || result.count == 6 {
        if Int(s) != nil {
            return true
        }
    }
    return false
}
