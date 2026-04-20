//
//  32. Rotate Array.swift
//  DSA
//
//  Created by Vijay Kumar on 08/04/26.
//

import Foundation
func rotateArr( _ arr: inout [Int], _ k: Int) {
    let rotation = k % arr.count
    let temp = arr
    for i in 0..<arr.count {
        let newIdx = (i + rotation) % arr.count
        arr[newIdx] = temp[i]
    }
}

func roatateArr( _ arr: inout [Int], _ k: Int) {
    roatate(&arr, 0, arr.count - 1)
    roatate(&arr, 0, k - 1)
    roatate(&arr, k, arr.count - 1)
    
}
func roatate(_ arr: inout [Int], _ start: Int, _ end: Int) {
    var left = start
    var right = end
    while ( left < right) {
        arr.swapAt(left, right)
        left += 1
        right -= 1
    }
}
