//
//  8. Total Fruits.swift
//  DSA
//
//  Created by Vijay Kumar on 11/03/26.
//

import Foundation

func totalFruit(_ fruits: [Int]) -> Int {
    var fruitTypeFreq : [Int:Int] = [:]
    var left = 0
    let basketCount = 2
    var maxFruitCount = 0
    
    for i in 0..<fruits.count {
        fruitTypeFreq[fruits[i], default: 0] += 1
        
        while fruitTypeFreq.count > basketCount {
            fruitTypeFreq[fruits[left]]! -= 1
            if fruitTypeFreq[fruits[left]] == 0 {
                fruitTypeFreq.removeValue(forKey: fruits[left])
            }
            left += 1
        }
        maxFruitCount = max(i - left + 1, maxFruitCount)
    }
    return maxFruitCount
}
