//
//  isPlanidrome.swift
//  DSA
//
//  Created by Vijay Kumar on 03/03/26.
//

import Foundation

//"abhihsek"
func reverseString ( _ s: String) -> String {
    var arr = Array(s)
    var left = 0
    var right = arr.count - 1
    while (left < right) {
        let temp = arr[left]
        arr[left] = arr[right]
        arr[right] = temp
        left += 1
        right -= 1
    }
    return String(arr)
}
// TC: o(n)
// SC: o(n)
