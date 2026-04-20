//
//  3. pivotIndex.swift
//  DSA
//
//  Created by Vijay Kumar on 15/03/26.
//

import Foundation

func pivotIndex(_ arr: [Int]) -> Int {
        var currentPivotIndex = 0
        for i in 0..<arr.count {
            var leftSum = 0
            var rightSum = 0
            // leftSum Calculation
            for j in 0..<i {
                leftSum += arr[j]
            }
            // rightSum Calculation
            for k in i + 1..<arr.count {
                rightSum += arr[k]
            }
            if leftSum == rightSum {
                return i
            }
        }
        return -1
    }

func pivotIndexI(_ arr: [Int]) -> Int {
       var totalSum = 0
       for num in arr {
        totalSum += num
       }
       var leftSum = 0
       for i in 0..<arr.count {
        let rightSum = totalSum - leftSum - arr[i]
        if rightSum == leftSum {
            return i
        }
        leftSum += arr[i]
       }
       return -1
    }
