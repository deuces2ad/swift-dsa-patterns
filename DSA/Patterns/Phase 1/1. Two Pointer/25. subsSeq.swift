//
//  25. subsSeq.swift
//  DSA
//
//  Created by Vijay Kumar on 08/04/26.
//

import Foundation
func findSubsSeq( _ arr: [Int], _ target: Int) -> Int {
    var seq = Array(repeating: 1, count: arr.count)
    let mod = 1_000_000_007
    let sorted = arr.sorted()
    for i in 1..<arr.count {
        seq[i] = (seq[i - 1] * 2) % mod
    }
    var left = 0
    var right = arr.count - 1
    var count = 0
    while ( left <= right) {
        let sum = sorted[left] + sorted[right]
        if sum <= target {
            count = (count + seq[right - left]) % mod
            left += 1
        } else {
            right -= 1
        }
    }
    return count
    
}
