//
//  7. Largest Odd number.swift
//  DSA
//
//  Created by Vijay Kumar on 03/03/26.
//

import Foundation

//https://leetcode.com/problems/largest-odd-number-in-string/

func largestOddNumber(_ num: String) -> String {
    var endIndex = num.index(before: num.endIndex)
    while true {
        if let value = Int(String(num[endIndex])), value % 2 == 1 {
            return String(num[num.startIndex...endIndex])
        }
        if endIndex == num.startIndex {
            break
        }
        endIndex = num.index(before: endIndex)
    }
    return ""
}
