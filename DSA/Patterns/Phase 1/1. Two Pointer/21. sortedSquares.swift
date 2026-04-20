//
//  21. sortedSquares.swift
//  DSA
//
//  Created by Vijay Kumar on 19/03/26.
//

import Foundation

func sortedSquares(_ arr: [Int]) -> [Int] {
    var left = 0
    var right = arr.count - 1
    var ans = Array(repeating: 0, count: arr.count)
    var index = arr.count - 1
    while (left <= right) {
        let leftNum = abs(arr[left] * arr[left])
        let rightNum = abs(arr[right] * arr[right])
        if leftNum < rightNum {
            ans[index] = rightNum
            right -= 1
        } else {
            ans[index] = leftNum
            left += 1
        }
        index -= 1
    }
    return ans
}
