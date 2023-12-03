//
//  최대공약수와 최소공배수.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/3/23.
//

import Foundation

/**
 두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수, solution을 완성해 보세요. 배열의 맨 앞에 최대공약수, 그다음 최소공배수를 넣어 반환하면 됩니다. 예를 들어 두 수 3, 12의 최대공약수는 3, 최소공배수는 12이므로 solution(3, 12)는 [3, 12]를 반환해야 합니다.
 */

func solution25(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}

//최대공약수
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

//최소공배수
func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
