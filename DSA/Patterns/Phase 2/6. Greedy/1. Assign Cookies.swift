//
//  1. Assign Cookies.swift
//  DSA
//
//  Created by Vijay Kumar on 25/03/26.
//

import Foundation
func assignCookies( _ g: [Int], c: [Int]) -> Int {
    let sortedGreed = g.sorted()
    let sortedCookies = c.sorted()
    var i = 0
    var j = 0
    var count = 0
    
    while (i < sortedCookies.count && j < sortedGreed.count) {
        if sortedCookies[i] >= sortedGreed[j] {
            j += 1
            count += 1
        }
        i += 1
    }
    return count
}
