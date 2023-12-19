//
//  시저 암호.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/19/23.
//

import Foundation
/**
 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 
 예를 들어,
 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다.
 "z"는 1만큼 밀면 "a"가 됩니다.
 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
 */
func solution38(_ s:String, _ n:Int) -> String {
    //1. 알파벳 순서 정의
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    let result = String(s.map({
        //2. 알파벳을 찾을 인덱스 정의.
        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
        //3. 해당하는 문자 찾기.
        let letter = alphabets[(index + n) % 26]
        //4. 주어진 s가 대문자인지, 소문자인지 구별
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    }))
    
    return result
}
