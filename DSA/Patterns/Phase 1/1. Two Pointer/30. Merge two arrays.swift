//
//  30. Merge two arrays.swift
//  DSA
//
//  Created by Vijay Kumar on 08/04/26.
//

import Foundation
func mergeTwoArrays( _ arr1: inout [Int], arr2:[Int], m: Int, n: Int) -> [Int] {
    var m = m - 1
    var n = n - 1
    var index = (m + n) - 1
    while (m >= 0 && n >= 0) {
        if arr1[m] < arr2[n] {
            arr1[index] = arr2[n]
            index -= 1
            n -= 1
        } else {
            arr1[index] = arr1[m]
            index -= 1
            m -= 1
        }
    }
    
    while ( m >= 0) {
        arr1[index] = arr1[m]
        m -= 1
        index -= 1
    }
    
    while ( n >= 0) {
        arr1[index] = arr2[n]
        n -= 1
        index -= 1
    }
    return arr1
}
