//
//  연속 부분 수열 합의 갯수.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 1/16/24.
//

import Foundation
/**
 철호는 수열을 가지고 놀기 좋아합니다. 어느 날 철호는 어떤 자연수로 이루어진 원형 수열의 연속하는 부분 수열의 합으로 만들 수 있는 수가 모두 몇 가지인지 알아보고 싶어졌습니다. 원형 수열이란 일반적인 수열에서 처음과 끝이 연결된 형태의 수열을 말합니다. 예를 들어 수열 [7, 9, 1, 1, 4] 로 원형 수열을 만들면 다음과 같습니다.
 원형 수열은 처음과 끝이 연결되어 끊기는 부분이 없기 때문에 연속하는 부분 수열도 일반적인 수열보다 많아집니다.
 원형 수열의 모든 원소 elements가 순서대로 주어질 때, 원형 수열의 연속 부분 수열 합으로 만들 수 있는 수의 개수를 return 하도록 solution 함수를 완성해주세요.
 */

func solution56(_ elements:[Int]) -> Int {
    /**
     원형 수열의 연속 부분 수열 합은 각 자리에서 본인을 제외한 나머지 인접한 원소들끼리 더해가는 부분 수열 합이다.
     [7, 9, 1, 1, 4] 에서 7 일때 (7) (7, 9) (7, 9, 1) (7, 9, 1, 1) (7, 9, 1, 1, 4) 이다
     남은 자리도 똑같은 방법으로 구하고 인덱스가 배열을 초과 하면 0으로 초기화해서 구한다.
     */
    var result: Set<Int> = []
    for i in 0..<elements.count {
        var sum = 0
        for j in 0..<elements.count {
            var index = i + j
            if index >= elements.count {
                index = index - elements.count
            }
            sum += elements[index]
            result.insert(sum)
        }
    }
    return result.count
}
