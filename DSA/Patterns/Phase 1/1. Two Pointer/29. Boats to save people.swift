//
//  29. Boats to save people.swift
//  DSA
//
//  Created by Vijay Kumar on 08/04/26.
//

import Foundation

func savePeople( _ arr: [Int], target: Int) -> Int {
    let sorted = arr.sorted()
    var left = 0
    var right = arr.count - 1
    var count = 0
    while ( left <= right) {
        let sum = sorted[left] + sorted[right]
        if sum <= target {
            left += 1
            right -= 1
        } else {
            right -= 1
        }
        count += 1
    }
    return count
}
