//
//  12. majorityElement.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
        var dict: [Int: Int] = [:]
        for num in nums {
            dict[num, default: 0] += 1
        }

        for (key, value) in dict {
            if value > (nums.count / 2) {
                return key
            }
        }
        return nums[0]
    }
