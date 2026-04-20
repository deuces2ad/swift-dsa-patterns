//
//  9. Continous Array.swift
//  DSA
//
//  Created by Vijay Kumar on 15/03/26.
//

import Foundation

func subarraysDivByKII(_ arr: [Int], _ k: Int) -> Int {
    var count = 0
    var hashMap: [Int: Int] = [0:1]
    var prefixSum = 0
    for i in 0..<arr.count {
        prefixSum += arr[i]
        var remainder = prefixSum % k
        if remainder < 0 {
            remainder += k
        }
        if let freq = hashMap[remainder] {
            count += freq
        }
        hashMap[remainder, default: 0] += 1
    }
    return count
}
