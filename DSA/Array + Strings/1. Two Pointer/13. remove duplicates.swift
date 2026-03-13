//
//  13. remove duplicates.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func removeDuplicates(_ arr: inout [Int]) -> Int {
    var left = 0
    for right in 1..<arr.count {
        if arr[left] != arr[right] {
            left += 1
            arr.swapAt(left, right)
        }
    }
    return left + 1
}
