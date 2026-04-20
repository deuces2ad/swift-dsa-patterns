//
//  16. Aggressive cowws.swift
//  DSA
//
//  Created by Vijay Kumar on 04/04/26.
//

import Foundation
// arr= [1,2,4,8,9] K = 3


func placeCows( _ arr: [Int],  _ k: Int) -> Int {
   var left = 1
    var right = arr.last! - left
    var ans = 0
    
    while(left <= right) {
        let mid = left + (right - left) / 2
        if canPlace(arr, k, mid) {
            ans = mid
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return ans
}

func canPlace( _ arr: [Int], _ k: Int, _ mid: Int) -> Bool {
    var lastPostion = arr[0]
    var count = 1
    for num in arr {
        if num - lastPostion >= mid {
            count += 1
            lastPostion = num
        }
        if count == k { return true }
    }
    return false
}
