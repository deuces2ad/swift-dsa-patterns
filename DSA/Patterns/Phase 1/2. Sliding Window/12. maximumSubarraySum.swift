//
//  12. maximumSubarraySum.swift
//  DSA
//
//  Created by Vijay Kumar on 19/03/26.
//

import Foundation

func maximumSubarraySum(_ arr: [Int], _ k: Int) -> Int {
    var left = 0
    var maxSum = 0
    var map: [Int: Int] = [:]
    var sum = 0
    for i in 0..<arr.count {
        sum += arr[i]
        map[arr[i], default: 0] += 1
        while (i - left + 1 > k) {
            map[arr[left], default: 0] -= 1
            if map[arr[left]] == 0 {
                map.removeValue(forKey: arr[left])
            }
            sum -= arr[left]
            left += 1
        }
        if i - left + 1 == k && map.count == k {
            maxSum = max(sum, maxSum)
        }
    }
    return maxSum
}
