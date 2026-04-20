//
//  8. Number of SubArrays with Sum K.swift
//  DSA
//
//  Created by Vijay Kumar on 15/03/26.
//

import Foundation
func numSubarraysWithSum(_ arr: [Int], _ k: Int) -> Int {
        var prefixSum = 0
        var count = 0
        var map: [Int: Int] = [0:1]
        for i in 0..<arr.count {
            prefixSum += arr[i]
            let leftSum = prefixSum - k
            if let freq = map[leftSum] {
                count += freq
            }
            map[prefixSum, default: 0] += 1
        }
        return count
    }
