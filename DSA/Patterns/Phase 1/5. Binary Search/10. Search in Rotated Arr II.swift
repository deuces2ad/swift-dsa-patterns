//
//  10. Search in Rotated Arr II.swift
//  DSA
//
//  Created by Vijay Kumar on 03/04/26.
//

import Foundation

func searchRotatedArray( _ arr: [Int], _ target: Int) -> Bool {
    var left = 0
    var right = arr.count - 1
    while(left <= right) {
        let mid = left + (right - left) / 2
        if arr[mid] == target {
            return true
        }
        if arr[left] == arr[right] {
            if arr[left] == target || arr[right] == target {
                return true
            }
            left += 1
            right -= 1
            continue
        }
        if arr[left] <= arr[mid] {
            if arr[left] <= target && target < arr[mid] {
                right = mid + 1
            } else {
                left = mid - 1
            }
        } else {
            if arr[mid] < target && target <= arr[right] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
    }
    return false
}
