//
//  8. Find difference.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation
func findTheDifference(_ s: String, _ t: String) -> Character {
    var sIndexing = Array(repeating: 0, count: 26)
    var tIndexing = Array(repeating: 0, count: 26)
    var charIndex = 0
    
    for ch in s {
        let index = Int(ch.asciiValue! - Character("a").asciiValue!)
        sIndexing[index] += 1
    }
    
    for ch in t {
        let index = Int(ch.asciiValue! - Character("a").asciiValue!)
        tIndexing[index] += 1
    }
    
    for i in 0..<26 {
        if tIndexing[i] != sIndexing[i] {
            return Character(UnicodeScalar(i + Int(Character("a").asciiValue!))!)
        }
    }
    return Character("")
}
