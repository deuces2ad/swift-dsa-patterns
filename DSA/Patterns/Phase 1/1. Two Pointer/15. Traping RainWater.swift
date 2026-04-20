//
//  15. Traping RainWater.swift
//  DSA
//
//  Created by Vijay Kumar on 18/03/26.
//

import Foundation

func trapRainWater( _ arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1
    var leftMax = 0
    var rightMax = 0
    var waterCap = 0
    while (left < right) {
        if arr[left] < arr[right] {
            if arr[left] < leftMax {
                waterCap += leftMax - arr[left]
            } else {
                leftMax = arr[left]
            }
            left += 1
        } else {
            if arr[right] < rightMax {
                waterCap += rightMax - arr[right]
            } else {
                rightMax = arr[right]
            }
            right -= 1
        }
    }
    return waterCap
}
