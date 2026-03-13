//
//  6. Logest Substring repearing char.swift
//  DSA
//
//  Created by Vijay Kumar on 10/03/26.
//

import Foundation

func characterReplacement(_ s: String, _ k: Int) -> Int {
    let arr = Array(s)
    var freqMap : [Character: Int] = [:]
    var left = 0
    var maxFreq = Int.min
    var maxLength = Int.min
    for i in 0..<arr.count {
        freqMap[arr[i], default: 0] += 1
        maxFreq = max(freqMap[arr[i]]!, maxFreq)
        if (i - left + 1) - maxFreq > k {
            freqMap[arr[left], default: 0] -= 1
            if freqMap[arr[left]] == 0 {
                freqMap.removeValue(forKey: arr[left])
            }
            left += 1
        }
        maxLength = max(maxLength, i - left + 1)
    }
    return maxLength
}
