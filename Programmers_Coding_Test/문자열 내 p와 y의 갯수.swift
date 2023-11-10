//
//  문자열 내 p와 y의 갯수.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/9/23.
//

import Foundation

/**
 대문자와 소문자가 섞여있는 문자열 s가 주어집니다. s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return 하는 solution를 완성하세요. 
 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다. 단, 개수를 비교할 때 대문자와 소문자는 구별하지 않습니다.

 예를 들어 s가 "pPoooyY"면 true를 return하고 "Pyy"라면 false를 return합니다.
 */
func solution6(_ s:String) -> Bool {
   
    //문자열을 소문자로 만들기
    let lowercased = s.lowercased()
    
    //소문자로 만든 문자열을 filter > count 하기
    let count_p = lowercased.filter { $0 == "p" }.count
    let count_s = lowercased.filter { $0 == "y" }.count
    
    let isEqual = count_p == count_s
    
    return isEqual
    
}
