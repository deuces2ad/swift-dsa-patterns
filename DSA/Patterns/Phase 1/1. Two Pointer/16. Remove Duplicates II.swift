//
//  16. Remove Duplicates II.swift
//  DSA
//
//  Created by Vijay Kumar on 18/03/26.
//

import Foundation

func removeDuplicatesII( _ arr: inout [Int]) -> Int {
    var j = 1
    var count = 1
    for i in 1..<arr.count {
        if arr[i] == arr[i - 1]{
            count += 1
        } else {
            count = 1
        }
        if count < 3 {
            arr[j] = arr[i]
            j += 1
        }
    }
    return j
}
