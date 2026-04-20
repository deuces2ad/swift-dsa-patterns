//
//  3.  Permulation of String.swift
//  DSA
//
//  Created by Vijay Kumar on 10/03/26.
//

import Foundation

func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    let arr = Array(s2)
    let patternArr = Array(s1)
    
    var freqP : [Int] = Array(repeating: 0, count: 26)
    var window: [Int] = Array(repeating: 0, count: 26)
    var left = 0
    
    for ch in patternArr {
        let index = Int(ch.asciiValue! - Character("a").asciiValue!)
        freqP[index] += 1
    }
    
    for i in 0..<arr.count {
        let index = Int(arr[i].asciiValue! - Character("a").asciiValue!)
        window[index] += 1
        
        if i >= patternArr.count {
            let leftIndex = Int(arr[left].asciiValue! - Character("a").asciiValue!)
            window[leftIndex] -= 1
            left += 1
        }
        
        if window == freqP {
            return true
        }
    }
    return false
}
