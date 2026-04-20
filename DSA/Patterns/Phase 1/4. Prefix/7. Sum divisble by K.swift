//
//  6. Sum divisble by K.swift
//  DSA
//
//  Created by Vijay Kumar on 15/03/26.
//

import Foundation
func subarraysDivByK(_ arr: [Int], _ k: Int) -> Int {
    var count = 0
    for i in 0..<arr.count {
        var sum = 0
        for j in i..<arr.count {
            sum += arr[j]
            if sum % k == 0 {
                count += 1
            }
        }
    }
    return count
}

func subarraysDivByKI(_ arr: [Int], _ k: Int) -> Int {
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
