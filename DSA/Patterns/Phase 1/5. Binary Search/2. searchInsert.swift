//
//  2. searchInsert.swift
//  DSA
//
//  Created by Vijay Kumar on 29/03/26.
//

import Foundation

func searchInsert(_ arr: [Int], _ target: Int) -> Int {
    var left = 0
    var right = arr.count - 1
    while(left <= right) {
        let mid = (left + right) / 2
        if arr[mid] == target {
            return mid
        } else if arr[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return left
}
