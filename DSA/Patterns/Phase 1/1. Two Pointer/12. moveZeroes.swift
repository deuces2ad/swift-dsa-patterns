//
//  12. moveZeroes.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func moveZeroes(_ arr: inout [Int]) {
    var left = 0
    for right in 0..<arr.count {
        if arr[right] != 0 {
            arr.swapAt(right, left)
            left += 1 // important as
        }
        print(arr)
    }
}
