//
//  문자열 내 마음대로 정렬하기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/28/23.
//

import Foundation
/**
 문자열로 구성된 리스트 strings와, 정수 n이 주어졌을 때, 각 문자열의 인덱스 n번째 글자를 기준으로 오름차순 정렬하려 합니다.
 예를 들어 strings가 ["sun", "bed", "car"]이고 n이 1이면 각 단어의 인덱스 1의 문자 "u", "e", "a"로 strings를 정렬합니다.
 */
func solution43(_ strings:[String], _ n:Int) -> [String] {
    
    return strings.sorted { first, second in
        if first[first.index(first.startIndex, offsetBy: n)] != second[second.index(second.startIndex, offsetBy: n)] {
            return first[first.index(first.startIndex, offsetBy: n)] < second[second.index(second.startIndex, offsetBy: n)]
        }
        return first < second
    }
}
