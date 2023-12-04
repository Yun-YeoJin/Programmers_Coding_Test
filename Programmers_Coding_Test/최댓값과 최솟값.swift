//
//  최댓값과 최솟값.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/4/23.
//

import Foundation
/**
 문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. 
 str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 "(최소값) (최대값)"형태의 문자열을 반환하는 함수, solution을 완성하세요.
 예를들어 s가 "1 2 3 4"라면 "1 4"를 리턴하고, "-1 -2 -3 -4"라면 "-4 -1"을 리턴하면 됩니다.
 */
func solution26(_ s:String) -> String {
    
    let newString = s.split(separator: " ") //공백을 기준으로 문자열 나눔.
    var arr: [Int] = []
    
    for i in newString {
        let number = Int(i) //나눠진 String을 Int형으로 변환
        arr.append(number ?? 0) //배열에 담아줌
    }
    
    return "\(arr.min()!) \(arr.max()!)"
}
