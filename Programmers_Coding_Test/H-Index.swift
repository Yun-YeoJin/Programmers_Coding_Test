//
//  H-Index.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 2/2/24.
//

import Foundation
/**
 H-Index는 과학자의 생산성과 영향력을 나타내는 지표입니다. 어느 과학자의 H-Index를 나타내는 값인 h를 구하려고 합니다. 위키백과1에 따르면, H-Index는 다음과 같이 구합니다.

 어떤 과학자가 발표한 논문 n편 중, h번 이상 인용된 논문이 h편 이상이고 나머지 논문이 h번 이하 인용되었다면 h의 최댓값이 이 과학자의 H-Index입니다.

 어떤 과학자가 발표한 논문의 인용 횟수를 담은 배열 citations가 매개변수로 주어질 때, 이 과학자의 H-Index를 return 하도록 solution 함수를 작성해주세요.
 
 n = 0
 n >= 0 논문 : 5
 n <= 0 논문 : 1
 H-Index 만족 x

 n = 1
 n >= 1 논문 : 4
 n <= 1 논문 : 2
 H-Index 만족 x

 n = 2
 n >= 2 논문 : 4
 n <= 2 논문 : 2
 H-Index 만족 x

 n = 3
 n >= 3 논문 : 3
 n <= 3 논문 : 3
 H-Index 만족 O

 n = 4
 n >= 4 논문 : 2
 n <= 4 논문 : 3
 H-Index 만족 x
 */

func solution61(_ citations:[Int]) -> Int {
    var arr = citations.sorted(by: <)
    var result: Int = 0
    
    for i in citations.indices {
        var h_index = citations.count - i
        if arr[i] >= h_index {
            result = h_index
            break
        }
    }
    return result
}
