//
//  10 Are almost Same.swift
//  DSA
//
//  Created by Vijay Kumar on 07/03/26.
//

import Foundation

// BANK ... KANB
func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
    var indexs: [Int] = []
    var left = 0
    var right = 0
    let arr1 = Array(s1)
    var arr2 = Array(s2)
    if s1 == s2 { return true }
    
    while (left < arr1.count) {
        if arr1[left] != arr2[right] {
            indexs.append(left)
        }
        left += 1
        right += 1
    }
    
    if indexs.count < 2 {
        return false
    }
    arr2.swapAt(indexs[1], indexs[0])
    return arr1 == arr2
}
