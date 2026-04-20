//
//  12. Count good subArrays.swift
//  DSA
//
//  Created by Vijay Kumar on 17/03/26.
//

import Foundation

func countGoodSubArrays( _ arr: [Int], k: Int) -> Int {
    var count = 0
    var map: [Int: Int] = [0:1]
    var prefix = 0
    for i in 0..<arr.count {
        prefix += arr[i] % 2 // either remainder will be 0 or 1
        if let freq = map[prefix - k] {
            count += freq
        }
        map[prefix, default: 0] += 1
    }
    return count
}
