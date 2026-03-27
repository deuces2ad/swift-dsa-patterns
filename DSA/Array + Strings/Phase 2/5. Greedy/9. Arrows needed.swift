//
//  9. Arrows needed.swift
//  DSA
//
//  Created by Vijay Kumar on 27/03/26.
//

import Foundation

func findMinArrowShots(_ points: [[Int]]) -> Int {
    var count = 1
    let sorted = points.sorted { $0[1] < $1[1] }
    var arrowPostion = sorted[0][1]
    for i in 1..<sorted.count {
        if sorted[i][0] > arrowPostion {
            count += 1
            arrowPostion = sorted[i][1]
        }
    }
    return count
}
