//
//  10. numSubarraysWithSum.swift
//  DSA
//
//  Created by Vijay Kumar on 16/03/26.
//

import Foundation
func numSubarraysWithSum( _ arr: [Int], k: Int) -> Int {
    var prefix = 0
    var count = 0
    var map: [Int: Int] = [0:1]
    
    for i in 0..<arr.count {
        prefix += arr[i]
        let leftOut = prefix - k
        if let freq = map[leftOut] {
            count += freq
        }
        map[prefix, default: 0] += 1
    }
    return count
}
