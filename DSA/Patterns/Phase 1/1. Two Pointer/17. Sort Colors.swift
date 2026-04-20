//
//  17. Sort Colors.swift
//  DSA
//
//  Created by Vijay Kumar on 19/03/26.
//

import Foundation

func sortColors( _ arr: inout [Int]) {
    var mid = 0
    var left = 0
    var right = arr.count - 1
    
    while (mid <= right) {
        switch arr[mid] {
        case 0:
            arr.swapAt(mid, left)
            mid += 1
            left += 1
        case 1:
            mid += 1
        case 2:
            arr.swapAt(right, mid)
            right -= 1
        default:
            mid += 1
        }
    }
}
