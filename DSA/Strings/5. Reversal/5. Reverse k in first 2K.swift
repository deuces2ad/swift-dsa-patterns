//
//  Reverse k in first 2K.swift
//  DSA
//
//  Created by Vijay Kumar on 03/03/26.
//

import Foundation
// https://leetcode.com/problems/reverse-string-ii/
func reverseStr(_ s: String, _ k: Int) -> String {
    var arr = Array(s)
    let count = arr.count
    for i in stride(from: 0, to: count, by: 2*k) {
        var left = i
        var right = min(i + k - 1, count - 1)
        while left < right {
            let temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp
            left += 1
            right -= 1
        }
    }
    return String(arr)
}

func reverseStrII(_ s: String, _ k: Int) -> String {
    var arr = Array(s)
    for i in stride(from: 0, to: arr.count, by: 2*k) {
        let n = min(k, arr.count - i)
        let mid = n / 2
        for j in 0..<mid {
            let temp = arr[i + j]
            arr[i + j] = arr[i + n - j - 1]
            arr[i + n - j - 1] = temp
        }
    }
    return String(arr)
}
