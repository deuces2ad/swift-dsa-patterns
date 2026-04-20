//
//  1.  runningSum.swift
//  DSA
//
//  Created by Vijay Kumar on 14/03/26.
//

import Foundation
func runningSum( _ arr: [Int]) -> [Int] {
    var result = [arr[0]]
    for i in 1..<arr.count {
        let prev = result[i - 1]
        result.append(prev + arr[i])
    }
    return result
}
