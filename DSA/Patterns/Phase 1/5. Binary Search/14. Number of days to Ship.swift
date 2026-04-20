//
//  Number of days to Ship.swift
//  DSA
//
//  Created by Vijay Kumar on 03/04/26.
//

import Foundation
func minNumberOfDays( _ arr: [Int], _ days: Int) -> Int {
    var left = arr.max()!
    var right = arr.reduce(0,+)
    
    while (left < right) {
        let mid = left + (right - left) / 2
        
        if isValid(arr, days,mid) {
            right = mid
        } else {
            left = mid + 1
        }
    }
    return left
}
private func isValid(_ arr: [Int], _ days: Int, _ capacity: Int) -> Bool {
    var maxDays = 1
    var maxCapacity = 0
    for num in arr {
        if maxCapacity + num > capacity {
            maxCapacity = 0
            maxDays += 1
        }
        maxCapacity += num
    }
    return maxDays <= days
}
