//
//  18. Paint Board.swift
//  DSA
//
//  Created by Vijay Kumar on 04/04/26.
//

import Foundation
//Input: arr[] = [5, 10, 30, 20, 15], k = 3

func paintBoard( _ arr: [Int], _ k: Int) -> Int {
    var left = arr.max()! // min one painter to paint
    var right = arr.reduce(0, +)
    var ans = 0
    
    while (left <= right) {
        let mid = left + (right - left) / 2
        if canPaint(arr,k,mid) {
            ans = mid
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return ans
}

func canPaint( _ arr: [Int],  _ k: Int ,_ mid: Int) -> Bool {
    var time = 0
    var count = 1
    for num in arr {
        if time + num  > mid {
            count += 1
            time = num
        } else {
            time += num
        }
    }
    return count <= k
}
