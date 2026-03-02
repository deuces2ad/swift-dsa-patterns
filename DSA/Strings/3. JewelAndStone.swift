//
//  JewelAndStone.swift
//  DSA
//
//  Created by Vijay Kumar on 01/03/26.
//

import Foundation

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var count = 0
    for jewel in jewels {
        for stone in stones {
            if jewel == stone {
                count += 1
            }
        }
    }
    return count
}
//TC: o(n^2)
//SC: o(1) --- > As max we gonna have 52 letters only.

func numJewelsInStonesI(_ jewels: String, _ stones: String) -> Int {
    var count = 0
    var dict: [Character: Int] = [:]
    for stone in stones {
        dict[stone, default : 0] += 1
    }
    
    for jewel in jewels {
        count = count + dict[jewel, default: 0]
    }
    return count
}

//TC: o(s + j)
//SC: o(1) --- > As max we gonna have 52 letters only.

func numJewelsInStonesII(_ jewels: String, _ stones: String) -> Int {
    var count = 0
    let jewelSet = Set(jewels)
    
    for jewel in stones {
        if jewelSet.contains(jewel) {
            count += 1
        }
    }
    return count
}

//TC: o(s+ j)
//SC: o(1) --- > As max we gonna have 52 letters only.
