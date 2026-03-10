//
//  02 String Differ.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

func differByPhrase(_ s1: String, _ s2: String) -> Bool {
    
    let w1 = s1.split(separator: " ")
    let w2 = s2.split(separator: " ")
    
    let shorter = w1.count <= w2.count ? w1 : w2
    let longer = w1.count > w2.count ? w1 : w2
    
    var left = 0
    
    // prefix match
    while left < shorter.count && shorter[left] == longer[left] {
        left += 1
    }
    
    var right = 0
    
    // suffix match
    while right < shorter.count - left &&
          shorter[shorter.count - 1 - right] ==
          longer[longer.count - 1 - right] {
        right += 1
    }
    
    return left + right == shorter.count
}
