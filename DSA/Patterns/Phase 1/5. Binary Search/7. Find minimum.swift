//
//  7. Find minimum.swift
//  DSA
//
//  Created by Vijay Kumar on 01/04/26.
//

import Foundation

func findMinimum( _ arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1
    while (left < right) {
        let mid = left + (right - left) / 2
        if arr[mid] > arr[right] {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return arr[left]
}
