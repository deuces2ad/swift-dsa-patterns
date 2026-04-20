//
//  11>peak element.swift
//  DSA
//
//  Created by Vijay Kumar on 03/04/26.
//

import Foundation

func findPeakElement( _ arr: [Int]) -> Int {
    for i in 1..<arr.count - 1 {
        if arr[i - 1] < arr[i] && arr[i + 1] < arr[i] {
            return i
        }
    }
    return -1
}
//O(N)

func findPeakElementI( _ arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1
    while( left <= right) {
        let mid  = left + (right - left) / 2
        if arr[mid] < arr[mid + 1] {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return left
}

