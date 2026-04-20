//
//  13. Advantage count.swift
//  DSA
//
//  Created by Vijay Kumar on 06/04/26.
//

import Foundation

func advantage( nums: [Int], nums2: [Int]) -> [Int] {
    var left = 0
    var right = nums.count - 1
    
    let s1 = nums.sorted()
    let s2 = nums2.enumerated().sorted { $0.element > $1.element}
    var res = Array(repeating: 0, count: nums.count)
    
    for (idx, val) in s2 {
        if s1[right] > val {
            res[idx] = s1[right]
            right -= 1
        } else {
            res[idx] = s1[left]
            left += 1
        }
    }
    return res
}
