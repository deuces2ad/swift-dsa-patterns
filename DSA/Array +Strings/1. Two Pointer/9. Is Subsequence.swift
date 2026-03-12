//
//  9. Is Subsequence.swift
//  DSA
//
//  Created by Vijay Kumar on 07/03/26.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var left = 0
    var right = 0
    let arr1 = Array(s)
    let arr2 = Array(t)
    var matched = 0
    while (left < arr1.count && right < arr2.count) {
        let ch1 = arr1[left]
        let ch2 = arr2[right]
        if ch1 == ch2 {
            left += 1
            right += 1
            matched += 1
            continue
        }
        
        if ch1 != ch2 {
            right += 1
            continue
        }
    }
    return matched == arr1.count
}
