//
//  3. Jump Game II.swift
//  DSA
//
//  Created by Vijay Kumar on 25/03/26.
//

import Foundation

func jumpGameII(_ arr: [Int]) -> Int {
    var coverage = 0
    var totalJumps = 0
    var lastJumpIndex = 0
    let destination = arr.count - 1
    for i in 0..<arr.count {
        coverage = max(coverage, arr[i])
        
        if i == lastJumpIndex {
            lastJumpIndex = coverage
            totalJumps += 1
            
            if coverage >= destination {
                return totalJumps
            }
        }
    }
    return totalJumps 
}
