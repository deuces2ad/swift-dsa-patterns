//
//  5. MaxiMum size subArray.swift
//  DSA
//
//  Created by Vijay Kumar on 15/03/26.
//

import Foundation

//| Problem          | HashMap                     | Initial Value |
//| ---------------- | --------------------------- | ------------- |
//| Subarray Count   | prefixSum → count           | `[0:1]`       |
//| Maximum Length   | prefixSum → index           | `[0:-1]`      |
//| Subarray indices | prefixSum → list of indices | `[0:[-1]]`    |


func maxiMumSizeSubArr( _ arr: [Int], _ k: Int) -> Int {
    var prefixSum = 0
    var hashMap: [Int: [Int]] = [0:[-1]]
    var subArrays: [[Int]] = []
    var maxCount = 0
    for i in 0..<arr.count {
        prefixSum += arr[i]
        let leftOutSum = prefixSum - k
        if let indices = hashMap[leftOutSum] {
            for j in indices {
                let arr = Array(arr[j + 1]...i)
                subArrays.append(arr)
                maxCount = max(maxCount, arr.count)
            }
        }
        hashMap[prefixSum, default: []].append(i)
    }
    return maxCount
}

func maxiMumSizeSubArrI( _ arr: [Int], _ k: Int) -> Int {
    var prefixSum = 0
    var hashMap: [Int: Int] = [0: -1]
    var maxLength = 0
    for i in 0..<arr.count {
        prefixSum += arr[i]
        let leftOutSum = prefixSum - k
        if let index = hashMap[leftOutSum] {
            maxLength = max(maxLength, i - index)
        }
        hashMap[prefixSum]? = 1
    }
    return maxLength
}

func maximumSizeSubArray( _ arr: [Int], _ k: Int) -> Int {
    var map:[Int: Int] = [0: -1]
    var prefixSum = 0
    var maxLength = 0
    for i in 0..<arr.count {
        prefixSum += arr[i]
        if let index = map[prefixSum - k] {
            maxLength = max(maxLength, i - index)
        }
        if map[prefixSum] == nil {
            map[prefixSum] = i
        }
    }
    return maxLength
}
