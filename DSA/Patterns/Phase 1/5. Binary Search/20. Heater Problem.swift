//
//  20. Heater Problem.swift
//  DSA
//
//  Created by Vijay Kumar on 05/04/26.
//

import Foundation

func warmHeaters( _ house: [Int], heater: [Int]) -> Int {
    var left = 0
    var right = house.max()! + heater.max()!
    var ans = 0
    while (left <= right) {
        let mid = left + (right - left) / 2
        if canHeat(house,heater,mid) {
            ans = mid
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return ans
}
private func canHeat( _ houses: [Int], _ heater: [Int], _ distance: Int) -> Bool {
    for house in houses {
        let sorted = heater.sorted()
        var left = 0
        var right = sorted.count - 1
        var covered = false
        while ( left <= right) {
            let mid = left + (right - left) / 2
            if abs(sorted[mid] - house) <= distance {
                covered = true
                break
            } else if sorted[mid] < house {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        if !covered {
            return false
        }
    }
    return true
}
