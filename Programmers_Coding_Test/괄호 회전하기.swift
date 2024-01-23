//
//  괄호 회전하기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 1/23/24.
//

import Foundation
/**
 다음 규칙을 지키는 문자열을 올바른 괄호 문자열이라고 정의합니다.

 (), [], {} 는 모두 올바른 괄호 문자열입니다.
 만약 A가 올바른 괄호 문자열이라면, (A), [A], {A} 도 올바른 괄호 문자열입니다. 예를 들어, [] 가 올바른 괄호 문자열이므로, ([]) 도 올바른 괄호 문자열입니다.
 만약 A, B가 올바른 괄호 문자열이라면, AB 도 올바른 괄호 문자열입니다. 예를 들어, {} 와 ([]) 가 올바른 괄호 문자열이므로, {}([]) 도 올바른 괄호 문자열입니다.
 대괄호, 중괄호, 그리고 소괄호로 이루어진 문자열 s가 매개변수로 주어집니다. 이 s를 왼쪽으로 x (0 ≤ x ≤ s의 길이)
 칸만큼 회전시켰을 때 s가 올바른 괄호 문자열이 되게 하는 x의 개수를 return 하도록 solution 함수를 완성해주세요.
 
 */
func solution58(_ s:String) -> Int {
    
    var newString = s.map { String($0) }
    var count: Int = newString.count
    var result: Int = 0
    
    while count > 0 {
        var stack: String = ""
        count -= 1
        for char in newString {
            if let last = stack.last {
                if (last == "[" && char == "]") || (last == "(" && char == ")") || (last == "{" && char == "}") {
                    stack.removeLast()
                    continue
                }
            }
            stack.append(char)
        }
        
        if stack.isEmpty {
            result += 1
        }
        
        let cycle = newString.removeFirst()
        newString.append(cycle)
    }
    return result
}
