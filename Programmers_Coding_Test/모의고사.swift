//
//  모의고사.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 4/2/24.
//

import Foundation
/**
 수포자는 수학을 포기한 사람의 준말입니다. 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.
 
 1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
 2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
 3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...
 
 1번 문제부터 마지막 문제까지의 정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하도록 solution 함수를 작성해주세요.
 */
func solution68(_ answers:[Int]) -> [Int] {
    let num1 = [1, 2, 3, 4, 5]
    let num2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let num3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var num1Count = 0
    var num2Count = 0
    var num3Count = 0
    var result: [Int] = []
    for i in answers.indices {
        if num1[i % num1.count] == answers[i] {
            num1Count += 1
        }
        if num2[i % num2.count] == answers[i] {
            num2Count += 1
        }
        if num3[i % num3.count] == answers[i] {
            num3Count += 1
        }
    }
    if num1Count == max(num1Count, num2Count, num3Count) {
        result.append(1)
    }
    if num2Count == max(num1Count, num2Count, num3Count) {
        result.append(2)
    }
    if num3Count == max(num1Count, num2Count, num3Count) {
        result.append(3)
    }
    return result
}


