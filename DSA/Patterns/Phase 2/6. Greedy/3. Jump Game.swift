//
//  3. Jump Game.swift
//  DSA
//
//  Created by Vijay Kumar on 25/03/26.
//

import Foundation

func jumpGame( _ nums: [Int]) -> Bool {
    var finalPosition = nums.count - 1
    for i in stride(from: nums.count - 2, through: 0, by: -1){
        if i + nums[i] >= finalPosition {
            finalPosition = i
        }
    }
    return finalPosition == 0
}
