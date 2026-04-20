//
//  3. Srqt of x.swift
//  DSA
//
//  Created by Vijay Kumar on 30/03/26.
//

import Foundation

func sqrt( _ x: Int) -> Int {
    if x < 2 {
        return x
    }
    var left = 0
    var right = x / 2
    var mid = 0
    while(left <= right) {
        mid = left + (right - left) / 2
        let product = mid * mid
        if product == x {
            return mid
        } else if product < x {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return right
}
