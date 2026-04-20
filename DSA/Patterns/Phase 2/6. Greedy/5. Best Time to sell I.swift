//
//  5. Best Time to sell I.swift
//  DSA
//
//  Created by Vijay Kumar on 26/03/26.
//

import Foundation

func maxProfit( _ prices: [Int]) -> Int {
    var maxProfit = 0
    var bestPrices = prices[0]
    for i in 1..<prices.count {
        if bestPrices > prices[i] {
            bestPrices = prices[i]
            continue
        }
        
        let profit = prices[i] - bestPrices
        maxProfit = max(maxProfit, profit)
    }
    return maxProfit
}
