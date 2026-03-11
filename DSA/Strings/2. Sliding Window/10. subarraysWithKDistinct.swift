//
//  10. subarraysWithKDistinct.swift
//  DSA
//
//  Created by Vijay Kumar on 11/03/26.
//

import Foundation

func subarraysWithKDistinct(_ nums: [Int], _ k: Int) -> Int {
    return atMost(nums, k) - atMost(nums, k - 1)
}

func atMost(_ nums: [Int], _ k: Int) -> Int {
    var freqMap : [Int: Int] = [:]
    var left = 0
    var count = 0
    
    for i in 0..<nums.count {
        freqMap[nums[i], default: 0] += 1
        
        while freqMap.count > k {
            freqMap[nums[left]]! -= 1
            if freqMap[nums[left]] == 0 {
                freqMap.removeValue(forKey: nums[left])
            }
            left += 1
        }
        
        count += i - left + 1
    }
    
    return count
}
