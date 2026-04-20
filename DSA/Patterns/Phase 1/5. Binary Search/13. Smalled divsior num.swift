//
//  13. Smalled divsior num.swift
//  DSA
//
//  Created by Vijay Kumar on 03/04/26.
//

import Foundation

func smalledDivisor( arr: [Int], _ t: Int) -> Int {
    var left = 1
    var right = 0
    for num in arr {
        right = max(right, num)
    }
    
    while (left < right) {
        let mid = left + (right - left) / 2
        if devide(arr,t,mid) {
            right = mid
        } else {
            left = mid + 1
        }
    }
    return left
}
private func devide( _ arr: [Int], _ t: Int, _ divisor: Int) -> Bool {
    var totalSum = 0
    for num in arr {
        totalSum += (num + divisor - 1) / divisor
    }
    return totalSum <= t
}
