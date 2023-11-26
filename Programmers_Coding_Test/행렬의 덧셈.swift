//
//  행렬의 덧셈.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/26/23.
//

import Foundation
/**
 행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다.
 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.
 */
func solution24(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var result: [[Int]] = []
    
    for i in 0..<arr1.count {
        result.append([])
        for j in 0..<arr1[i].count {
            result[i].append(arr1[i][j] + arr2[i][j])
        }
    }
    
    return result
}
