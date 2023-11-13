//
//  제일 작은 수 제거하기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/13/23.
//

import Foundation

/**
 정수를 저장한 배열, arr 에서 가장 작은 수를 제거한 배열을 리턴하는 함수, solution을 완성해주세요. 
 단, 리턴하려는 배열이 빈 배열인 경우엔 배열에 -1을 채워 리턴하세요.
 예를 들어 arr이 [4,3,2,1]인 경우는 [4,3,2]를 리턴 하고, [10]면 [-1]을 리턴 합니다.
 */

func solution13(_ arr:[Int]) -> [Int] {
    
    var resultArr = arr
    
    if arr.count > 1 {
        let min = arr.min() ?? 0
        let index = arr.firstIndex(of: min) ?? 0
        resultArr.remove(at: index)
    } else {
        return [-1]
    }
    
    return resultArr
}
