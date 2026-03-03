//
//  5. Balanced Substring.swift
//  DSA
//
//  Created by Vijay Kumar on 02/03/26.
//

import Foundation
// https://leetcode.com/problems/split-a-string-in-balanced-strings/
//"RLRRLLRLRL"
func balancedStringSplit(_ s: String) -> Int {
    var r = 0
    var l = 0
    var count = 0
    for ch in s {
         if ch == "R" {
            r += 1
        } else {
            l += 1
        }
        
        if r == l {
            count += 1
            r = 0
            l = 0
        }
    }
    return count
}
