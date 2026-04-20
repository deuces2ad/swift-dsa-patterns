//
//  4. Find range.swift
//  DSA
//
//  Created by Vijay Kumar on 30/03/26.
//

import Foundation

func range(_ arr: [Int], _ target: Int) -> [Int] {
    [firstHalf(arr: arr, target), secondHalf(arr: arr, target)]
}

private func firstHalf( arr: [Int], _ target: Int) -> Int {
    var result = -1
    var left = 0
    var right = arr.count - 1
    while (left <= right) {
        let mid = left + (right - left) / 2
        if arr[mid] == target {
            result = mid
            right = mid - 1 // check for duplicates on left side
        } else if arr[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return result
}
private func secondHalf( arr: [Int], _ target: Int) -> Int {
    var result = -1
    var left = 0
    var right = arr.count - 1
    while (left <= right) {
        let mid = left + (right - left) / 2
        if arr[mid] == target {
            result = mid
            left = mid + 1 // check for duplicates on left side
        } else if arr[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return result
}
