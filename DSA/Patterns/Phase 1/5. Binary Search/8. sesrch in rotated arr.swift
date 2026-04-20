//
//  *. sesrch in rotated arr.swift
//  DSA
//
//  Created by Vijay Kumar on 01/04/26.
//

import Foundation
func searchIIII(_ arr: [Int], _ target: Int) -> Int {
        var left = 0
        var right = arr.count - 1
        while (left <= right) {
            let mid = left + (right - left) / 2
            if arr[mid] == target {
                return mid
            }
            if arr[left] <= arr[mid] {
                if target >= arr[left] && target < arr[mid] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                if target > arr[mid] && target <= arr[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        return -1
       
    }
