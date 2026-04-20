//
//  17. bouquet can be made.swift
//  DSA
//
//  Created by Vijay Kumar on 04/04/26.
//

import Foundation

func makeBouquet( _ arr: [Int], k: Int, _ m: Int) -> Int {
    if (m * k) > arr.count - 1 {
        return -1
    }
    var left = arr.min()!
    var right = arr.max()!
    var ans = 0
    
    while ( left <= right) {
        let mid = left + (right - left) / 2
        if canMake(arr, m, k,mid) {
            ans = mid
            right = mid - 1
        } else {
            left = mid - 1
        }
    }
    return ans
}

func canMake( _ arr: [Int], _ m: Int, _ k: Int, _ mid: Int) -> Bool {
    var consecutiveDay = 0
    var minDay = 0
    var bouquet = 0
    for day in arr {
        if day <= mid {
            consecutiveDay += 1
            if consecutiveDay == k {
                bouquet += 1
                consecutiveDay = 0
            }
        } else {
            consecutiveDay = 0
        }
    }
    return bouquet >= m
}
