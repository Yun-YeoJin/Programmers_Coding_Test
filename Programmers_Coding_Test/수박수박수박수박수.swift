//
//  수박수박수박수박수.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/23/23.
//

import Foundation
/**
 길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요.
 예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 "수박수"를 리턴하면 됩니다.
 */
func solution20(_ n:Int) -> String {
    
    return (0 ..< n).map { $0 % 2 == 0 ? "수" : "박" }.reduce("", +)
}

