//
//  행렬의 곱셈.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 2/2/24.
//

import Foundation
/**
 2차원 행렬 arr1과 arr2를 입력받아, arr1에 arr2를 곱한 결과를 반환하는 함수, solution을 완성해주세요.
 */
func solution62(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var result = Array(repeating: Array(repeating: 0, 
                                        count: arr2[0].count),
                       count: arr1.count)
    
    for i in result.indices { //행
        for j in result[i].indices { //열
            for k in arr1[0].indices {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }
    return result
}
