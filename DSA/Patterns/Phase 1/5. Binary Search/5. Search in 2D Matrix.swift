//
//  5. Search in 2D Matrix.swift
//  DSA
//
//  Created by Vijay Kumar on 31/03/26.
//

import Foundation

func search( _ matrix: [[Int]], _ target: Int) -> Bool {
    let rowIdx = search_row(matrix, target)
    if rowIdx == -1 {
        return false
    }
    let correctArr = matrix[rowIdx]
    return binary_search(correctArr, target)
    
}
private func binary_search( _ arr: [Int], _ target: Int) -> Bool {
    var left = 0
    var right = arr.count - 1
    while( left <= right) {
        let mid = left + (right - left) / 2
        if arr[mid] == target {
            return true
        } else if arr[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
}

private func search_row( _ matrix: [[Int]], _ target: Int) -> Int {
    var left = 0
    var right = matrix.count - 1
    while( left <= right) {
        let mid = left + (right - left) / 2
        if matrix[mid][0] < target && target <= matrix[mid][matrix[mid].count - 1] {
            return mid
        } else if matrix[mid][0] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return -1
}
