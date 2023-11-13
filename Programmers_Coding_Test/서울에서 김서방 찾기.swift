//
//  서울에서 김서방 찾기.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 11/13/23.
//

import Foundation

/**
 String형 배열 seoul의 element중 "Kim"의 위치 x를 찾아, "김서방은 x에 있다"는 String을 반환하는 함수, solution을 완성하세요.
 seoul에 "Kim"은 오직 한 번만 나타나며 잘못된 값이 입력되는 경우는 없습니다.
 */

func solution11(_ seoul:[String]) -> String {
    
    //"Kim"이 몇 번째에 있는지 확인후 > True로 변환.
    var result = seoul.map { $0 == "Kim" }
    
    //True 값이 나온 index return
    guard let indexOfTrue = result.firstIndex(of: true) else { return "" }
    
    return "김서방은 \(indexOfTrue)에 있다"
}
