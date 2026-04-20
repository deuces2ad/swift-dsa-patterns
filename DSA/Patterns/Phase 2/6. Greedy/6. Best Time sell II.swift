//
//  6. Best Time sell II.swift
//  DSA
//
//  Created by Vijay Kumar on 26/03/26.
//

import Foundation
func maxProfitII(_ prices: [Int]) -> Int {
       var totalProfit = 0
       var bestPrice = prices[1]
       for i in 1..<prices.count {
           if bestPrice > prices[i] {
               bestPrice = prices[i]
               continue
           }
           let profit = prices[i] - bestPrice
           totalProfit += profit
           bestPrice = prices[i]
       }
       return totalProfit
   }
