//
//  Valid Anagram.swift
//  DSA
//
//  Created by Vijay Kumar on 04/03/26.
//

import Foundation

func validAnagram(_ s: String, _ t: String) -> Bool {
    var dict: [Character: Int] = [:]
    for ch in s {
        dict[ch, default: 0] += 1
    }
    
    for ch in t {
        guard let val = dict[ch], val > 0 else { return false }
        dict[ch] = val - 1
    }
    return true
}
