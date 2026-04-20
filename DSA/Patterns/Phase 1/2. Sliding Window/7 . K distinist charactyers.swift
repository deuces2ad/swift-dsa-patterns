//
//  7 . K distinist charactyers.swift
//  DSA
//
//  Created by Vijay Kumar on 11/03/26.
//

import Foundation

func logestSubStringWithDistinctCharacters( _ s: String, k: Int) -> Int {
    let arr = Array(s)
    var left = 0
    var maxLength = Int.min
    var freqMap: [Character: Int] = [:]
 
    
    for i in 0..<arr.count {
        freqMap[arr[i], default: 0] += 1

        while freqMap.count > k {
            freqMap[arr[left]]! -= 1
            if freqMap[arr[left]] == 0 {
                freqMap.removeValue(forKey: arr[left])
            }
            left += 1
        }
        maxLength = max(maxLength, i - left + 1)
    }
    return maxLength
}
