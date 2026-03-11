//
//  most Frequent Vowel.swift
//  DSA
//
//  Created by Vijay Kumar on 02/03/26.
//

import Foundation
// https://leetcode.com/problems/find-most-frequent-vowel-and-consonant/
func maxFreqSum(_ s: String) -> Int {
    var dict: [Character: Int] = [:]
    var maxConsonentCount = 0
    var maxVowelsCount = 0
    
    for ch in s {
        dict[ch, default: 0] += 1
    }
    
    for (key, value) in dict {
        switch key {
        case "a", "e", "i", "o", "u":
             maxVowelsCount = max(maxVowelsCount, value)
        default:
            maxConsonentCount = max(maxConsonentCount, value)
        }
    }
    
    return maxConsonentCount + maxVowelsCount
}
