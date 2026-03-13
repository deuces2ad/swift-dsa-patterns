//
//  1.1 Max Average.swift
//  DSA
//
//  Created by Vijay Kumar on 11/03/26.
//

import Foundation

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var left = 0
    var maxAvg = Double(Int.min)
    var windowSum = 0
    var windowSize = 0
    for i in 0..<nums.count {
       windowSum += nums[i]
        windowSize = i - left + 1
        if windowSize > k {
            windowSum -= nums[left]
            left += 1
        }
        
        windowSize = i - left + 1
        if windowSize == k {
            let avg = Double(windowSum) / Double(k)
            maxAvg = max(maxAvg, avg)
        }
    }
    return maxAvg
}
