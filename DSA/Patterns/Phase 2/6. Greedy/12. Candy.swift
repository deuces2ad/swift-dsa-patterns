//
//  12. Candy.swift
//  DSA
//
//  Created by Vijay Kumar on 28/03/26.
//

import Foundation

func candy(_ ratings: [Int]) -> Int {
    var candies = Array(repeating: 1, count: ratings.count)
    for  i in 1..<ratings.count {
        if ratings[i - 1] < ratings[i] {
            candies[i] = candies[i - 1] + 1
        }
    }
    
    var j = ratings.count - 2
    while (j >= 0) {
        if ratings[j + 1] < ratings[j] {
            candies[j] = max(candies[j], candies[j + 1] + 1)
        }
    }
    return candies.reduce(0, +)
}
