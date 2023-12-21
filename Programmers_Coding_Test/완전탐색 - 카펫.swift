//
//  완전탐색 - 카펫.swift
//  Programmers_Coding_Test
//
//  Created by 윤여진 on 12/20/23.
//

import Foundation
/**
 Leo는 카펫을 사러 갔다가 아래 그림과 같이 중앙에는 노란색으로 칠해져 있고 테두리 1줄은 갈색으로 칠해져 있는 격자 모양 카펫을 봤습니다.

 Leo는 집으로 돌아와서 아까 본 카펫의 노란색과 갈색으로 색칠된 격자의 개수는 기억했지만, 전체 카펫의 크기는 기억하지 못했습니다.

 Leo가 본 카펫에서 갈색 격자의 수 brown, 노란색 격자의 수 yellow가 매개변수로 주어질 때 카펫의 가로, 세로 크기를 순서대로 배열에 담아 return 하도록 solution 함수를 작성해주세요.
 
 * 카펫의 가로 길이는 세로 길이와 같거나, 세로 길이보다 깁니다. *
 
  brown    yellow    return
    10       2       [4, 3]
     8       1       [3, 3]
    24       24      [8, 6]
 */

func solution40(_ brown:Int, _ yellow:Int) -> [Int] {
    
    let sum = brown + yellow //격자의 갯수
    var width = Int() //가로
    var length = Int() //세로
    for i in 1...sum{
        //가로와 세로 구하기!
        if sum % i == 0{
            width = sum / i
            length = i
        }
        //yellow가 (가로 - 2) * (세로 - 2)이면 Stop.
        if (width - 2) * (length - 2) == yellow {
            break
        }
    }
    return [width, length]
}
