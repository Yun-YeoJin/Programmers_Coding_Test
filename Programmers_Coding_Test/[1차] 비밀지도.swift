//
//  [1차] 비밀지도.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 1/5/24.
//

import Foundation
/**
 네오는 평소 프로도가 비상금을 숨겨놓는 장소를 알려줄 비밀지도를 손에 넣었다. 그런데 이 비밀지도는 숫자로 암호화되어 있어 위치를 확인하기 위해서는 암호를 해독해야 한다. 다행히 지도 암호를 해독할 방법을 적어놓은 메모도 함께 발견했다.

 지도는 한 변의 길이가 n인 정사각형 배열 형태로, 각 칸은 "공백"(" ") 또는 "벽"("#") 두 종류로 이루어져 있다.
 전체 지도는 두 장의 지도를 겹쳐서 얻을 수 있다. 각각 "지도 1"과 "지도 2"라고 하자. 지도 1 또는 지도 2 중 어느 하나라도 벽인 부분은 전체 지도에서도 벽이다. 지도 1과 지도 2에서 모두 공백인 부분은 전체 지도에서도 공백이다.
 "지도 1"과 "지도 2"는 각각 정수 배열로 암호화되어 있다.
 
 암호화된 배열은 지도의 각 가로줄에서 벽 부분을 1, 공백 부분을 0으로 부호화했을 때 얻어지는 이진수에 해당하는 값의 배열이다.
 
 네오가 프로도의 비상금을 손에 넣을 수 있도록, 비밀지도의 암호를 해독하는 작업을 도와줄 프로그램을 작성하라.
 */
func solution49(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    
    var answer: [String] = []
    for i in 0..<n {
        ///Int 배열을 미리 OR 연산 후 2진수로 변환
        var line = String(arr1[i] | arr2[i], radix: 2)
        line = String(repeating: "0", count: n - line.count) + line
        ///String 배열에 담기
        answer.append(line.reduce("") { return $0 + ($1 == "1" ? "#" : " ") })
    }
    return answer
//    
//    var ansArr1: [String] = []
//    var ansArr2: [String] = []
//    
//    for i in arr1 {
//        ansArr1.append(makeRadixNum(i, n))
//    }
//    
//    for i in arr2 {
//        ansArr2.append(makeRadixNum(i, n))
//    }
//
//    let union = zip(ansArr1, ansArr2).map { computeUnion($0, $1) }
//    return union
}

//func makeRadixNum(_ num: Int, _ format: Int) -> String {
//    let v2 = String(format: "%\(format)d", Int(String(num, radix: 2)) ?? 0)
//    let passWordArr = v2.replacingOccurrences(of: "1", with: "#").replacingOccurrences(of: "0", with: " ")
//    return passWordArr
//}
//
//func computeUnion(_ str1: String, _ str2: String) -> String {
//    var result: String = ""
//    for (char1, char2) in zip(str1, str2) {
//        if char1 == "#" || char2 == "#" {
//            result += "#"
//        } else {
//            result += " "
//        }
//    }
//    return result
//}


