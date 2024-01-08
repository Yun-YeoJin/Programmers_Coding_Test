//
//  N개의 최소공배수.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 1/8/24.
//

import Foundation
/**
 두 수의 최소공배수(Least Common Multiple)란 입력된 두 수의 배수 중 공통이 되는 가장 작은 숫자를 의미합니다. 예를 들어 2와 7의 최소공배수는 14가 됩니다. 정의를 확장해서, n개의 수의 최소공배수는 n 개의 수들의 배수 중 공통이 되는 가장 작은 숫자가 됩니다. n개의 숫자를 담은 배열 arr이 입력되었을 때 이 수들의 최소공배수를 반환하는 함수, solution을 완성해 주세요.
 */
func solution52(_ arr:[Int]) -> Int {
    var tempLcm = 0
    for i in 0 ... arr.count - 1 {
        if i == 0 {
            tempLcm = lcm1(arr[i], arr[i + 1])
        } else {
            tempLcm = lcm1(arr[i], tempLcm)
        }
    }
    return tempLcm
}
//최대공약수
func gcd1(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd1(b, a % b)
    }
}

//최소공배수
func lcm1(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd1(a, b)
}

