//
//  11. Longest Palindrome.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation
func longestPalindrome(_ s: String) -> Int {
    var dict: [Character: Int] = [:]
    
    for ch in s {
        dict[ch, default: 0] += 1
    }
    var count = 0
    var hasOdd = false
    
    for (_, value) in dict {
        if value % 2 == 0 {
            count += value
        } else {
            count += value - 1
            hasOdd = true
        }
    }
    if hasOdd {
        count += 1
    }
    return count
}
