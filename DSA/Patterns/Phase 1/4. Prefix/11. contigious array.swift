//
//  11. contigious array.swift
//  DSA
//
//  Created by Vijay Kumar on 16/03/26.
//

import Foundation

//Input: nums = [0,1,1,1,1,1,0,0,0]
//Output: 6
func findMaxLength(_ arr: [Int]) -> Int {
    var countZero = 0
    var countOne = 0
    var maxlength = 0
    var map: [Int:Int] = [0: -1]
    for i in 0..<arr.count {
        if arr[i] == 0 {
            countZero += 1
        } else {
            countOne += 1
        }
        let diff = countOne - countZero
        if let index = map[diff] {
            maxlength = max(maxlength, i - index)
        } else {
            map[diff] = i
        }
    }
    return maxlength
}
