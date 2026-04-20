//
//  3. Intersection of Two arrays.swift
//  DSA
//
//  Created by Vijay Kumar on 13/03/26.
//

import Foundation

func intersection(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var map: [Int: Int] = [:]
    var uniQueSet : Set<Int> = Set<Int>()

    let small = arr1.count < arr2.count ? arr1 : arr2
    let large = arr1.count < arr2.count ? arr2 : arr1
    
    for i in 0..<small.count {
        map[small[i]] = i
    }
    
    for i in 0..<large.count {
        let value = large[i]
        if let _ = map[value] {
            uniQueSet.insert(value)
        }
    }
    return Array(uniQueSet)
}
