//
//  11 leastInterval.swift
//  DSA
//
//  Created by Vijay Kumar on 28/03/26.
//

import Foundation
func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        var map: [Character: Int] = [:]
        tasks.forEach {
            map[$0, default: 0] += 1
        }
        let maxCount = map.values.max()!
        var numberOfmaxCount = 0

        for (key,value) in map {
            if value == maxCount {
                numberOfmaxCount += 1
            }
        }

        return max(tasks.count, (maxCount - 1) * (n + 1) + (numberOfmaxCount))
    }
