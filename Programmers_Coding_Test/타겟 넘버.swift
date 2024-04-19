//
//  타겟 넘버.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 4/19/24.
//

import Foundation
/**
 n개의 음이 아닌 정수들이 있습니다. 이 정수들을 순서를 바꾸지 않고 적절히 더하거나 빼서 타겟 넘버를 만들려고 합니다. 
 예를 들어 [1, 1, 1, 1, 1]로 숫자 3을 만들려면 다음 다섯 방법을 쓸 수 있습니다.

 -1+1+1+1+1 = 3
 +1-1+1+1+1 = 3
 +1+1-1+1+1 = 3
 +1+1+1-1+1 = 3
 +1+1+1+1-1 = 3
 
 사용할 수 있는 숫자가 담긴 배열 numbers, 타겟 넘버 target이 매개변수로 주어질 때 숫자를 적절히 더하고 빼서 
 타겟 넘버를 만드는 방법의 수를 return 하도록 solution 함수를 작성해주세요.
 */
func solution71(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func dfs(_ index: Int, _ sum: Int) {
        if index == numbers.count {
            if sum == target {
                count += 1
            }
            return
        }
        
        dfs(index + 1, sum + numbers[index])  // 현재 숫자를 더하는 경우
        dfs(index + 1, sum - numbers[index])  // 현재 숫자를 빼는 경우
    }
    
    dfs(0, 0)  // DFS 탐색 시작
    
    return count
}

