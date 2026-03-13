//
//  5.Valid Palnidrome II.swift
//  DSA
//
//  Created by Vijay Kumar on 06/03/26.
//

import Foundation

func validPalindrome(_ s: String) -> Bool {
    var left = 0
    var right = s.count - 1
    var arr = Array(s)
    
    while (left < right) {
        if arr[left] != arr[right] {
            return iPlanidrome(arr, l: left + 1, r: right) ||
            iPlanidrome(arr,l:left, r: right - 1)
        }
        left += 1
        right -= 1
    }
    return true
}
private func iPlanidrome( _ arr: [Character], l: Int, r: Int) -> Bool {
    var left = l
    var right = r
    while (left < right) {
        if arr[left] != arr[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}
