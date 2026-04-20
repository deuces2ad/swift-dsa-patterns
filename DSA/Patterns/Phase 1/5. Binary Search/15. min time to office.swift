//
//  15. time to take reach office.swift
//  DSA
//
//  Created by Vijay Kumar on 03/04/26.
//

import Foundation
func minOffice( _ arr: [Int], _ t: Double) -> Int {
    if Double(arr.count - 1) > t {
        return -1
    }
    
    var left = 1
    var right = arr.max()!
    var ans = 0
    while ( left <= right) {
        let mid = left + (right - left) / 2
        if canTravel(arr,t, mid) {
            ans = mid
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return ans
}

private func canTravel( _ arr: [Int], _ h: Double, _ mid: Int) -> Bool {
    var maxTime = 0
    for i in 0..<arr.count - 1 {
        maxTime += (arr[i] + mid - 1) / mid
    }
    maxTime += arr.last! / mid
    return Double(maxTime) <= h
}
