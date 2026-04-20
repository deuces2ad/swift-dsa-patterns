//
//  2. Find Anagram.swift
//  DSA
//
//  Created by Vijay Kumar on 10/03/26.
//

import Foundation

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    
    let arr = Array(s)
    let patternArr = Array(p)
    var freqP : [Int] = Array(repeating: 0, count: 26)
    var windowFreq : [Int] = Array(repeating: 0, count: 26)
    var left = 0
    var ans: [Int] = []
    
    for ch in p {
        let index = Int(ch.asciiValue! - Character("a").asciiValue!)
        freqP[index] += 1
    }
    
    for i in 0..<arr.count {
        let index = Int(arr[i].asciiValue! - Character("a").asciiValue!)
        windowFreq[index] += 1
        
        if i >= patternArr.count {
            let index = Int(arr[left].asciiValue! - Character("a").asciiValue!)
            windowFreq[index] -= 1
            left += 1
        }
        if windowFreq == freqP {
            ans.append(left)
        }
    }
    return ans
}
