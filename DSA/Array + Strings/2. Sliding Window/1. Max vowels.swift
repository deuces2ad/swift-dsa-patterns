//
//  1. Max vowels.swift
//  DSA
//
//  Created by Vijay Kumar on 11/03/26.
//

import Foundation

func maxVowels(_ s: String, _ k: Int) -> Int {
    let arr = Array(s)
    var maxCount = 0
    var count = 0
    var left = 0
    var windowSize = 0
    for i in 0..<arr.count {
        let ch = arr[i]
        if isVowel(ch) {
            count += 1
        }
        windowSize = i - left + 1
        if windowSize > k {
            let leftCh = arr[left]
            if isVowel(leftCh) {
                count -= 1
            }
            left += 1
        }
        maxCount = max(maxCount, count)
    }
    return maxCount
}
