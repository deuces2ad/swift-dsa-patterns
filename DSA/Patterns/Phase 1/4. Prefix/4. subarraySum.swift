//
//  4. subarraySum.swift
//  DSA
//
//  Created by Vijay Kumar on 15/03/26.
//

import Foundation
// Brute force
func subarraySum(_ arr: [Int], _ k: Int) -> Int {
    var subArrays: [[Int]] = []
    var left = 0
    var sum = 0
    for i in 0..<arr.count {
        sum = 0
        for j in i..<arr.count {
            sum += arr[j]
            if sum == k {
                let subArr = Array(arr[i...j])
                subArrays.append(subArr)
            }
        }
    }
    return subArrays.count
}

func subarraySumI(_ arr: [Int], _ k: Int) -> Int {
    var prefixSum = 0
    var hashMap: [Int: Int] = [0:1]
    var count = 0
    for i in 0..<arr.count {
        prefixSum += arr[i]
        let lefoutSum = prefixSum - k
        if let freq = hashMap[lefoutSum] {
            count += freq
        }
        hashMap[prefixSum, default: 0] += 1
    }
    return count
}
//TC: O(n)

func subarraySumII(_ arr: [Int], _ k: Int) -> [[Int]] {
    var subArrays: [[Int]] = []
    var prefixSum = 0
    var hashMap: [Int:[Int]] = [0:[-1]]
    for i in 0..<arr.count {
        prefixSum += arr[i]
        let leftOutSum = prefixSum - k
        if let indeces = hashMap[leftOutSum] {
            for j in indeces {
                let arr = Array(arr[j + 1...i])
                subArrays.append(arr)
            }
        }
        hashMap[prefixSum, default: []].append(i)
    }
    return subArrays
}


