//
//  4. Intersect Of Two Arrats.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation
func intersectI(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    let small = arr1.count < arr2.count ? arr1 : arr2
    let large = arr1.count < arr2.count ? arr2 : arr1
    var map: [Int: Int] = [:]
    for i in 0..<small.count {
        map[small[i], default : 0] += 1
    }
    var ans: [Int] = []
    for i in 0..<large.count {
        let value = large[i]
        if let value = map[value], value > 0 {
            ans.append(value)
            map[value]! -= 1
        }
    }
    return ans
}
