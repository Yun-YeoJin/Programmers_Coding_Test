//
//  기능개발.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 3/26/24.
//

import Foundation
/**
 프로그래머스 팀에서는 기능 개선 작업을 수행 중입니다.
 각 기능은 진도가 100%일 때 서비스에 반영할 수 있습니다.
 
 또, 각 기능의 개발속도는 모두 다르기 때문에 뒤에 있는 기능이 앞에 있는 기능보다 먼저 개발될 수 있고, 이때 뒤에 있는 기능은 앞에 있는 기능이 배포될 때 함께 배포됩니다.
 
 먼저 배포되어야 하는 순서대로 작업의 진도가 적힌 정수 배열 progresses와 각 작업의 개발 속도가 적힌 정수 배열 speeds가 주어질 때 각 배포마다 몇 개의 기능이 배포되는지를 return 하도록 solution 함수를 완성하세요.
 */

func solution66(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    //93은 1씩 - 7일 > pop
    //30은 30씩 - 4일 > pop
    //55는 5씩 - 9일 > pop
    var progresses = progresses
    let speeds = speeds
    
    var temp = 0
    var result = [Int]()
    
    while true {
        var count = 0
        for j in speeds.indices {
            progresses[j] += speeds[j]
        }
        
        for _ in progresses.indices {
            if progresses[count] < 100 {
                break
            }
            count += 1
        }
        
        if temp != count {
            result.append(count-temp)
            temp = count
        }
        
        if result.reduce(0, +) == progresses.count {
            break
        }
    }
    return result
}
