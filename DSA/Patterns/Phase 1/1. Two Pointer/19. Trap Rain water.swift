//
//  19. Trap Rain water.swift
//  DSA
//
//  Created by Vijay Kumar on 19/03/26.
//

import Foundation

func maxArea(_ arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1
    var maxWater = 0
    
    while (left < right) {
        // calculate area first, else we may loose postion
        let height = min( arr[left], arr[right])
        let cap = (right - left) * height
        maxWater = max(maxWater, cap)
        
        if arr[left] < arr[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    return maxWater
}
