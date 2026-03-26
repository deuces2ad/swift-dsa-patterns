//
//  8. interval Overlap.swift
//  DSA
//
//  Created by Vijay Kumar on 26/03/26.
//

import Foundation

func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
    if intervals.count == 1 {
        return 0
    }
    let sortedInterVals = intervals.sorted { $0[1] < $1[1]}
    var count = 1
    var prevEnd = sortedInterVals[0][1]
    for i in 1..<sortedInterVals.count {
        if sortedInterVals[i][0] >= prevEnd {
            count += 1
            prevEnd = sortedInterVals[i][1]
        }
    }
    return sortedInterVals.count - count
}
